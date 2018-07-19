package lti.lening.ctrlr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.LoginBean;
import lti.lening.bean.RegisterBean;
import lti.lening.service.LoanService;

/*
 * Author: Inder Mohan, Shivam Agarwal
 * Version: 1.0
 * 		
 */
@Controller
public class LoginController {

	public static final String SALT = "Lenning";
	
	@Autowired
	private LoanService service;

	@RequestMapping("showHome.loan")
	public String goHome(@ModelAttribute("register") RegisterBean register) {
		return "home";
	}

	@RequestMapping(value = "login.loan", method = RequestMethod.POST)
	public ModelAndView login(LoginBean login, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		RegisterBean user = service.authenticate(login);
		if (user != null) {
			session.setAttribute("User", user);
			
			String plainPassword=login.getPassword();
			String saltedPassword = SALT + plainPassword;
			String hashedPassword= service.generateHash(saltedPassword);
			login.setPassword(hashedPassword);

			
			
			if (user.getPassword().equals(login.getPassword())) {
				AadhaarPanBean userDetail = service.getProfileDetails(user);
				session.setAttribute("UserDetail", userDetail);
				mav.setViewName("profile");
				return mav;
			} else {
				mav.addObject("invalidPass", "Please Enter Valid Password..");
				mav.setViewName("login");
				return mav;
			}
		} else {
			mav.addObject("invalidEmail", "Please Enter Valid Email..");
			mav.setViewName("login");
			return mav;
		}
	}
	
	@RequestMapping("logout.loan")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

}
