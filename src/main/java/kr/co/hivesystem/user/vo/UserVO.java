package kr.co.hivesystem.user.vo;

public class UserVO {
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private String MEMBER_TEL;
	private String MEMBER_COMPANY;
	private String MEMBER_DEPARTMENT;
	private String MEMBER_MAIL;
	private String MEMBER_TYPE;
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	
	public String getMEMBER_PW() {
		return MEMBER_PW;
	}
	
	public void setMEMBER_PW(String mEMBER_PW) {
		MEMBER_PW = mEMBER_PW;
	}
	
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	
	public String getMEMBER_TEL() {
		return MEMBER_TEL;
	}
	
	public void setMEMBER_TEL(String mEMBER_TEL) {
		MEMBER_TEL = mEMBER_TEL;
	}
	
	public String getMEMBER_COMPANY() {
		return MEMBER_COMPANY;
	}
	
	public void setMEMBER_COMPANY(String mEMBER_COMPANY) {
		MEMBER_COMPANY = mEMBER_COMPANY;
	}
	
	public String getMEMBER_DEPARTMENT() {
		return MEMBER_DEPARTMENT;
	}
	
	public void setMEMBER_DEPARTMENT(String mEMBER_DEPARTMENT) {
		MEMBER_DEPARTMENT = mEMBER_DEPARTMENT;
	}
	
	public String getMEMBER_MAIL() {
		return MEMBER_MAIL;
	}
	
	public void setMEMBER_MAIL(String mEMBER_MAIL) {
		MEMBER_MAIL = mEMBER_MAIL;
	}
	
	public String getMEMBER_TYPE() {
		return MEMBER_TYPE;
	}
	
	public void setMEMBER_TYPE(String mEMBER_TYPE) {
		MEMBER_TYPE = mEMBER_TYPE;
	}

	@Override
	public String toString() {
		return "UserVO [MEMBER_ID=" + MEMBER_ID + ", MEMBER_PW=" + MEMBER_PW + ", MEMBER_NAME=" + MEMBER_NAME
				+ ", MEMBER_TEL=" + MEMBER_TEL + ", MEMBER_COMPANY=" + MEMBER_COMPANY + ", MEMBER_DEPARTMENT="
				+ MEMBER_DEPARTMENT + ", MEMBER_MAIL=" + MEMBER_MAIL + ", MEMBER_TYPE=" + MEMBER_TYPE + "]";
	}
	
	
	
}
