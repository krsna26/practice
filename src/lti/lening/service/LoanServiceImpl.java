package lti.lening.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lti.lening.bean.LoginBean;
import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.ForgetBean;
import lti.lening.bean.LoanBean;
import lti.lening.bean.RegisterBean;
import lti.lening.repo.AccountExistException;
import lti.lening.repo.LoanRepository;

@Service
public class LoanServiceImpl implements LoanService {

	@Autowired
	private LoanRepository repo;

	@Override
	public RegisterBean authenticate(LoginBean login) {
		RegisterBean user = repo.validate(login);
		return user;
	}

	@Override
	public AadhaarPanBean aadhaarAuthenticate(RegisterBean aadhaar) throws AccountExistException {
		AadhaarPanBean user = repo.aadhaarValidate(aadhaar);
		return user;

	}

	@Override
	public AadhaarPanBean panAuthenticate(RegisterBean pan) {
		AadhaarPanBean user = repo.panValidate(pan);
		return user;
	}

	@Override
	public boolean persist(RegisterBean user) {
		boolean flag = repo.save(user);
		return flag;
	}

	@Override
	public RegisterBean authenticateEmailAadhaar(ForgetBean forget) {
		RegisterBean user = repo.validateEmailAadhaar(forget);
		return user;
	}

	@Override
	public boolean resetPassword(ForgetBean forget) {
		boolean updateResult = repo.updatePassword(forget);
		return updateResult;

	}
	@Override
	public AadhaarPanBean getProfileDetails(RegisterBean user) {
		AadhaarPanBean userDetail = repo.getDetails(user);
		return userDetail;
	}

	@Override
	public LoanBean checkLoanStatus(String panNo) {
		LoanBean loan = repo.getLoanDetails(panNo);
		return loan;
	}

	@Override
	public List getWheelerBrands(String wheeler) {
		return repo.getWheelerBrands(wheeler);

	}

	@Override
	public List getWheelerName(String brand, String category) {
		return repo.getWheelerName(brand, category);
	}

	@Override
	public List getWheelerPrice(String name, String category) {
		return repo.getWheelerPrice(name, category);
	}

	@Override
	public boolean persistLoan(LoanBean loan) {
		boolean flag = repo.saveLoan(loan);
		return flag;
	}
	
	@Override
	public String generateHash(String saltedPassword) {
		return repo.generateHash(saltedPassword); 
	}

}
