package lti.lening.service;

import lti.lening.bean.LoginBean;

import java.util.List;

import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.ForgetBean;
import lti.lening.bean.LoanBean;
import lti.lening.bean.RegisterBean;
import lti.lening.repo.AccountExistException;

public interface LoanService {

	RegisterBean authenticate(LoginBean login);

	AadhaarPanBean aadhaarAuthenticate(RegisterBean aadhaar) throws AccountExistException;

	AadhaarPanBean panAuthenticate(RegisterBean pan);

	boolean persist(RegisterBean user);

	RegisterBean authenticateEmailAadhaar(ForgetBean forget);

	boolean resetPassword(ForgetBean forget);

	AadhaarPanBean getProfileDetails(RegisterBean user);

	LoanBean checkLoanStatus(String panNo);

	List getWheelerBrands(String wheeler);

	List getWheelerName(String brand, String category);

	List getWheelerPrice(String name, String category);

	boolean persistLoan(LoanBean loan);
	
	String generateHash(String saltedPassword);
}
