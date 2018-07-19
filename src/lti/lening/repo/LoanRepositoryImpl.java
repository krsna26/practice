package lti.lening.repo;

import lti.lening.bean.LoginBean;
import lti.lening.bean.AadhaarPanBean;
import lti.lening.bean.ForgetBean;
import lti.lening.bean.FourWheelerVehicleBean;
import lti.lening.bean.LoanBean;
import lti.lening.bean.RegisterBean;
import lti.lening.bean.TwoWheelerVehicleBean;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoanRepositoryImpl implements LoanRepository {

	public static final String SALT = "Lenning";
	
	@Autowired
	private SessionFactory factory;

	@Override
	public RegisterBean validate(LoginBean login) {
		Session session = factory.openSession();
		RegisterBean user = (RegisterBean) session.get(RegisterBean.class, login.getEmail());
		if (user != null)
			return user;
		else
			return null;
	}

	@Override
	public AadhaarPanBean aadhaarValidate(RegisterBean aadhaar) throws AccountExistException {
		String sql = "select email from login where aadhaar_no='" + aadhaar.getAadhaarNo() + "'";
		Session session = factory.openSession();

		SQLQuery query = session.createSQLQuery(sql);
		if (query.uniqueResult() != null)
			throw new AccountExistException("Account with same Aadhaar already exist");

		AadhaarPanBean user = (AadhaarPanBean) session.get(AadhaarPanBean.class, aadhaar.getAadhaarNo());
		if (user != null) {
			return user;
		} else
			return null;
	}

	@Override
	public AadhaarPanBean panValidate(RegisterBean pan) {
		Session session = factory.openSession();
		AadhaarPanBean user = (AadhaarPanBean) session.byNaturalId(AadhaarPanBean.class).using("panNo", pan.getPanNo())
				.load();
		try {
			if (user.getAadhaarNo().equals(pan.getAadhaarNo()))
				return user;
			else {
				return null;
			}
		} catch (NullPointerException e) {
			return null;
		}
	}

	@Override
	public boolean save(RegisterBean user) {

		Session session = factory.openSession();

		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			Query query = session.createQuery("select email from RegisterBean");
			List<RegisterBean> list = query.list();
			Iterator<RegisterBean> it = list.iterator();
			if (!(list.contains(user.getEmail()))) {
				
				
				
				String plainPassword=user.getPassword();
				String saltedPassword = SALT + plainPassword;
				String hashedPassword= generateHash(saltedPassword);
				user.setPassword(hashedPassword);
				
				
				
				
				session.save(user);
				txn.commit();
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			txn.rollback();
			return false;
		}
	}

	@Override
	public RegisterBean validateEmailAadhaar(ForgetBean forget) {
		Session session = factory.openSession();
		RegisterBean user = (RegisterBean) session.get(RegisterBean.class, forget.getEmail());
		if(user!=null)
			return user;
		else
		return null;
		
	}

	@Override
	public boolean updatePassword(ForgetBean forget) {
		Session session = factory.openSession();

		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			
			
			String plainPassword=forget.getPassword();
			String saltedPassword = SALT + plainPassword;
			String hashedPassword= generateHash(saltedPassword);
			forget.setPassword(hashedPassword);
			
			
			
			String sql = ("update Login  set password ='" + forget.getPassword() + "' where email ='"
					+ forget.getEmail() + "'");
			SQLQuery query = session.createSQLQuery(sql);
			query.executeUpdate();
			txn.commit();
			return true;

		} catch (Exception e) {
			System.out.println("Your password is not updated.");
			txn.rollback();
			return false;
		}
	}

	@Override
	public AadhaarPanBean getDetails(RegisterBean user) {
		Session session = factory.openSession();
		AadhaarPanBean userDetail = (AadhaarPanBean) session.get(AadhaarPanBean.class, user.getAadhaarNo());
		return userDetail;
	}

	@Override
	public LoanBean getLoanDetails(String panNo) {
		Session session = factory.openSession();
		LoanBean loan = (LoanBean) session.get(LoanBean.class, panNo);
		return loan;
	}

	@Override
	public List getWheelerBrands(String wheeler) {
		if (wheeler.equalsIgnoreCase("twowheeler")) {
			Session session = factory.openSession();
			List list = session.createQuery("select distinct(brand) from TwoWheelerVehicleBean").list();
			return list;
		} else {
			Session session = factory.openSession();
			List list = session.createQuery("select distinct(brand) from FourWheelerVehicleBean").list();
			return list;
		}
	}

	@Override
	public List getWheelerName(String brand, String category) {
		if (category.equalsIgnoreCase("twowheeler")) {
			Session session = factory.openSession();
			String hql = "FROM TwoWheelerVehicleBean WHERE brand =:vehiclebrand";
			Query query = session.createQuery(hql);
			query.setParameter("vehiclebrand", brand);
			List vehiclename = query.list();
			return vehiclename;
		} else {
			String hql = "FROM FourWheelerVehicleBean WHERE brand =:vehiclebrand";

			Session session = factory.openSession();
			Query query = session.createQuery(hql);
			query.setParameter("vehiclebrand", brand);
			List vehiclename = query.list();
			return vehiclename;
		}
	}

	@Override
	public List getWheelerPrice(String name, String category) {
		if (category.equalsIgnoreCase("twowheeler")) {
			String hql = "from TwoWheelerVehicleBean WHERE name =:vehiclename";
			Session session = factory.openSession();
			Query query = session.createQuery(hql);
			query.setParameter("vehiclename", name);
			List<TwoWheelerVehicleBean> list=query.list();
			return list;
		} else {
			String hql = "from FourWheelerVehicleBean WHERE name =:vehiclename";
			Session session = factory.openSession();
			Query query=session.createQuery(hql);
			query.setString("vehiclename", name);
			List<FourWheelerVehicleBean> list=query.list();
			return list;		
		}
	}

	@Override
	public boolean saveLoan(LoanBean loan) {
		Session session = factory.openSession();

		Transaction txn = session.getTransaction();

		try {
			txn.begin();

			session.save(loan);
			txn.commit();
			return true;
		} catch (Exception e) {
			txn.rollback();
			return false;
		}
	}
	
	

	public String generateHash(String input) {
	
		
		StringBuilder hash = new StringBuilder();

		
		try
		{
		MessageDigest sha = MessageDigest.getInstance("SHA-1");
		byte[] hashedBytes = sha.digest(input.getBytes());
		char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
					'a', 'b', 'c', 'd', 'e', 'f' };
		for (int idx = 0; idx < hashedBytes.length; ++idx) {
			byte b = hashedBytes[idx];
			hash.append(digits[(b & 0xf0) >> 4]);
			hash.append(digits[b & 0x0f]);
			}
			
	} catch (NoSuchAlgorithmException e) {
		// handle error here.
	}

		return hash.toString();
	}
	
}
