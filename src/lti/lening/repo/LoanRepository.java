package lti.lening.repo;

import lti.lening.bean.LoginBean;

import java.util.List;

import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.ForgetBean;
import lti.lening.bean.LoanBean;
import lti.lening.bean.RegisterBean;

public interface LoanRepository {

	RegisterBean validate(LoginBean login);

	AadhaarPanBean aadhaarValidate(RegisterBean aadhaar) throws AccountExistException;

	AadhaarPanBean panValidate(RegisterBean pan);

	boolean save(RegisterBean user);

	RegisterBean validateEmailAadhaar(ForgetBean forget);

	boolean updatePassword(ForgetBean forget);

	AadhaarPanBean getDetails(RegisterBean user);

	LoanBean getLoanDetails(String panNo);

	List getWheelerBrands(String wheeler);

	List getWheelerName(String brand, String category);

	List getWheelerPrice(String name, String category);

	boolean saveLoan(LoanBean loan);
	
	public String generateHash(String input);
}
