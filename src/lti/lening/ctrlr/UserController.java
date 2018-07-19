package lti.lening.ctrlr;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.ForgetBean;
import lti.lening.bean.RegisterBean;
import lti.lening.repo.AccountExistException;
import lti.lening.service.LoanService;

/*
 * Author: Inder Mohan, Shivam Agarwal
 * Version: 1.0
 * 		
 */
@Controller
@SessionAttributes({ "register", "forgetPassword" })
public class UserController {

	@Autowired
	private LoanService service;

	@RequestMapping(value = "doRegister.loan")
	public String doRegister(Map model) {
		model.put("register", new RegisterBean());
		return "inputaadhaar";
	}

	@RequestMapping(value = "showAadhaar.loan", method = RequestMethod.POST)
	public ModelAndView showAadhaar(@ModelAttribute("register") RegisterBean aadhaar, HttpSession session, Map model) {
		ModelAndView mav = new ModelAndView();

		AadhaarPanBean user = null;
		try {
			user = service.aadhaarAuthenticate(aadhaar);
		} catch (AccountExistException e) {
			e.printStackTrace();
			mav.addObject("exist", e.getMessage());
			mav.setViewName("inputaadhaar");
			return mav;
		}

		if (user != null) {
			session.setAttribute("customer", user);
			mav.setViewName("showaadhaar");
			return mav;
		} else {
			model.put("register", new RegisterBean());
			mav.addObject("invalidAadhaar", "Invalid Aadhaar No");
			mav.setViewName("inputaadhaar");
			return mav;
		}
	}

	@RequestMapping(value = "inputPan.loan")
	public String inputPan(Map model) {
		model.put("register", new RegisterBean());
		return "inputpan";
	}

	@RequestMapping(value = "showPan.loan", method = RequestMethod.POST)
	public ModelAndView showPan(@ModelAttribute("register") RegisterBean pan, HttpSession session, Map model) {
		ModelAndView mav = new ModelAndView();
		AadhaarPanBean user = (AadhaarPanBean) session.getAttribute("customer");
		pan.setAadhaarNo(user.getAadhaarNo());
		user = service.panAuthenticate(pan);
		if (user != null) {
			session.setAttribute("customer", user);
			mav.setViewName("showpan");
			return mav;
		} else {
			mav.addObject("invalidPan", "PAN Number is invalid..");
			mav.setViewName("inputpan");
			return mav;
		}
	}

	@RequestMapping(value = "inputEmailPass.loan")
	public String inputEmailPass() {
		return "inputemailpass";
	}

	@RequestMapping(value = "acceptEmailPass.loan", method = RequestMethod.POST)
	public ModelAndView registration(@ModelAttribute("register") RegisterBean user, HttpSession session, Map model) {
		ModelAndView mav = new ModelAndView();
		AadhaarPanBean detail = (AadhaarPanBean) session.getAttribute("customer");
		user.setAadhaarNo(detail.getAadhaarNo());
		user.setPanNo(detail.getPanNo());
		if (service.persist(user)) {
			mav.setViewName("successPage");
			return mav;
		} else {
			mav.addObject("emailExists", "Email Already exists ! Please Try Something else..");
			mav.setViewName("inputemailpass");
			return mav;
		}
	}

	@RequestMapping(value = "doForget.loan")
	public String doForget(Map model) {
		model.put("forgetPassword", new ForgetBean());
		return "forgetpassword";
	}

	@RequestMapping(value = "confirmDetails.loan", method = RequestMethod.POST)
	public ModelAndView confirmDetails(@ModelAttribute("forgetPassword") ForgetBean forget, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		RegisterBean user = service.authenticateEmailAadhaar(forget);

		if (user != null) {
			session.setAttribute("details", user);

			if (user.getAadhaarNo().equals(forget.getAadhaarNo())) {
				mav.setViewName("resetpassword");
				return mav;
			} else {
				mav.addObject("incorrectAadhaar", "Please enter correct Aadhaar Number linked with respective email account");
				mav.setViewName("forgetpassword");
				return mav;
			}
		} else {
			mav.addObject("emailNotExist", "Email Does Not Exist ! Please Register..");
			mav.setViewName("forgetpassword");
			return mav;

		}
	}

	@RequestMapping(value = "changePassword.loan", method = RequestMethod.POST)
	public ModelAndView changePassword(@ModelAttribute("forgetPassword") ForgetBean forget, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		RegisterBean user = (RegisterBean) session.getAttribute("details");
		forget.setEmail(user.getEmail());

		if (forget.getPassword().equals(forget.getConfirmPassword())) {
			boolean updateResult = service.resetPassword(forget);
			if (updateResult) {
				mav.setViewName("resetsuccess");
				return mav;
			}
			else
			{
				mav.addObject("serverDown","Request can't be processed right now.. Server is down for maintenance");
				mav.setViewName("resetpassword");                                // In progress
				return mav;
			}
		} else {
			mav.addObject("passwordNotMatch", "Password does not match.. Please try again!!");
			mav.setViewName("resetpassword");
			return mav;
		}

	}
}
