package lti.lening.ctrlr;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.FourWheelerVehicleBean;
import lti.lening.bean.LoanBean;
import lti.lening.bean.TwoWheelerVehicleBean;
import lti.lening.service.LoanService;

@Controller
@SessionAttributes({ "loanstatus" })
public class ProfileController {

	@Autowired
	private LoanService service;

	@RequestMapping(value = "loanStatus.loan")
	public ModelAndView loanStatus(@RequestParam("pan") String pan, Map model) {
		ModelAndView mav = new ModelAndView();
		LoanBean loan = service.checkLoanStatus(pan);
		if (loan != null) {
			mav.addObject("loan", loan);
			mav.setViewName("loanstatus");
			return mav;

		} else {
			mav.addObject("LoanNotApplied", "You haven't applied for loan yet.");
			mav.setViewName("applyloan");
			return mav;
		}
	}

	@RequestMapping(value = "wheeler.loan")
	public ModelAndView wheeler(@RequestParam("wheeler") String wheeler, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (wheeler.equalsIgnoreCase("twowheeler")) {
			mav.addObject("Wheeler", (List<TwoWheelerVehicleBean>) service.getWheelerBrands(wheeler));
			// mav.addObject("Category", wheeler);
			session.setAttribute("Category", wheeler);
			mav.setViewName("wheelerbrand");
			return mav;
		} else if (wheeler.equalsIgnoreCase("fourwheeler")) {
			mav.addObject("Wheeler", (List<FourWheelerVehicleBean>) service.getWheelerBrands(wheeler));
			// mav.addObject("Category", wheeler);
			session.setAttribute("Category", wheeler);
			mav.setViewName("wheelerbrand");
			return mav;
		} else {
			mav.setViewName("vehiclecategory");
			return mav;
		}
	}

	@RequestMapping(value = "WheelerBrand.loan")
	public ModelAndView WheelerBrand(@RequestParam("wheelerbrand") String brand, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String category = (String) session.getAttribute("Category");
		if (category.equalsIgnoreCase("twowheeler")) {
			mav.addObject("VehicleNames", (List<TwoWheelerVehicleBean>) service.getWheelerName(brand, category));
			session.setAttribute("brand", brand);
			mav.setViewName("wheelername");
			return mav;
		} else if (category.equalsIgnoreCase("fourwheeler")) {
			mav.addObject("VehicleNames", (List<FourWheelerVehicleBean>) service.getWheelerName(brand, category));
			session.setAttribute("brand", brand);
			mav.setViewName("wheelername");
			return mav;
		} else {
			mav.setViewName("wheelername");
			return mav;
		}

	}

	@RequestMapping(value = "WheelerName.loan")
	public ModelAndView WheelerName(@RequestParam("wheelername") String name, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String category = (String) session.getAttribute("Category");
		if (category.equalsIgnoreCase("twowheeler")) {
			List<TwoWheelerVehicleBean> list = service.getWheelerPrice(name, category);
			String image=list.get(0).getImage();
			session.setAttribute("image", image);
			//mav.addObject("VehiclePrice", price);
			session.setAttribute("price", list.get(0).getPrice());
			session.setAttribute("name", name);
			mav.setViewName("wheelerprice");
			return mav;
		} else if (category.equalsIgnoreCase("fourwheeler")) {
			List<FourWheelerVehicleBean> list= service.getWheelerPrice(name, category);
			//mav.addObject("VehiclePrice", list);
			session.setAttribute("price", list.get(0).getPrice());
			session.setAttribute("name", name);
			session.setAttribute("image", list.get(0).getImage());
			mav.setViewName("wheelerprice");
			return mav;
		} else {
			
			mav.setViewName("wheelerprice");
			return mav;
		}

	}


	@RequestMapping(value = "loanApplied.loan", method = RequestMethod.GET)
	public ModelAndView loanApplied(@RequestParam("emi") double emi, @RequestParam("loanAmount") double loanAmount,
			@RequestParam("tenure") int tenure, HttpSession session) {
		ModelAndView mav=new ModelAndView();
		if(emi==0||loanAmount==0||tenure==0)
		{
			mav.addObject("Selected", "Select all the slider values for calculating the loan interest and EMI");
			mav.setViewName("wheelerprice");
			return mav;
		}
		else
		{
		int cibl = ((AadhaarPanBean) session.getAttribute("UserDetail")).getCibl();
		if (cibl >= 600) {
			String pan = ((AadhaarPanBean) session.getAttribute("UserDetail")).getPanNo();
			LoanBean loan = new LoanBean();
			Date date = new Date();
			loan.setEmi(emi);
			loan.setLoanAmount(loanAmount);
			loan.setPanNo(pan);
			loan.setTenure(tenure);
			loan.setStartDate(date);
			Calendar cal = Calendar.getInstance();
			cal.setTime(date);
			cal.set(Calendar.MONTH, (cal.get(Calendar.MONTH) + tenure));
			Date endDate = cal.getTime();
			loan.setEndDate(endDate);
			session.setAttribute("loanDetail", loan);
			mav.setViewName("loandocument");
			return mav;
			
		}
		else
		{
			mav.addObject("LoanNotApproved", "Your Cibl score is less than 600, Sorry the loan request can't be approved.");
			mav.setViewName("profile");
			return mav;
		}
		}
	}
	@RequestMapping(value="loandocumentuploaded.loan")
	public ModelAndView loanDocumentUploaded(HttpSession session)
	{
		LoanBean loan=(LoanBean)session.getAttribute("loanDetail");
		ModelAndView mav=new ModelAndView();
		boolean result=service.persistLoan(loan);
		if(result==true)
		{
		mav.addObject("LoanApproved", "Congratulations!! Your loan request has been accepted! Your loan request will be approved within 48 hours after document verification. Thank You!");
		mav.setViewName("profile");
		return mav;
		}
		else
		{
			mav.addObject("SystemError", "You have already applied for the loan");
			mav.setViewName("profile");
			return mav;
		}
		
	}
	
}