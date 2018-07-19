package lti.lening.bean;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.NaturalId;


@Entity
@Table(name="AADHAAR_PAN")
public class AadhaarPanBean {
	@Id
	@Column(name="aadhaar_no")
	private String aadhaarNo;
	@NaturalId
	@Column(name="pan_no")
	private String panNo;
	private String name;
	@Column(name="phone_no")
	private String phoneNo;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String address;
	private int cibl;
	@Column(name="bank_name")
	private String bankName;
	@Column(name="bank_account_no")
	private String bankAccountNo;
	@Column(name="bank_ifsc")
	private String bankIfsc;
	
	public String getAadhaarNo() {
		return aadhaarNo;
	}
	public void setAadhaarNo(String aadhaarNo) {
		this.aadhaarNo = aadhaarNo;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCibl() {
		return cibl;
	}
	public void setCibl(int cibl) {
		this.cibl = cibl;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankAccountNo() {
		return bankAccountNo;
	}
	public void setBankAccountNo(String bankAccountNo) {
		this.bankAccountNo = bankAccountNo;
	}
	public String getBankIfsc() {
		return bankIfsc;
	}
	public void setBankIfsc(String bankIfsc) {
		this.bankIfsc = bankIfsc;
	}
	
	

	

}
