package kr.co.hivesystem.customer.vo;

public class CustomerVO {
	private String CUSTOMER_COMPANY;
	private String CUSTOMER_MANAGER;
	private String CUSTOMER_MAN_TEL;
	private String EMG_MANAGER;
	private String EMG_MAN_TEL;
	private String CUSTOMER_ADD;
	private String CUSTOMER_MEMO;
	private String MEMBER_ID;
	private String CUSTOMER_INSERT_DATE;
	private int BNO;
	
	public String getCUSTOMER_COMPANY() {
		return CUSTOMER_COMPANY;
	}
	
	public void setCUSTOMER_COMPANY(String cUSTOMER_COMPANY) {
		CUSTOMER_COMPANY = cUSTOMER_COMPANY;
	}
	
	public String getCUSTOMER_MANAGER() {
		return CUSTOMER_MANAGER;
	}
	
	public void setCUSTOMER_MANAGER(String cUSTOMER_MANAGER) {
		CUSTOMER_MANAGER = cUSTOMER_MANAGER;
	}
	
	public String getCUSTOMER_MAN_TEL() {
		return CUSTOMER_MAN_TEL;
	}
	
	public void setCUSTOMER_MAN_TEL(String cUSTOMER_MAN_TEL) {
		CUSTOMER_MAN_TEL = cUSTOMER_MAN_TEL;
	}
	
	public String getEMG_MANAGER() {
		return EMG_MANAGER;
	}
	
	public void setEMG_MANAGER(String eMG_MANAGER) {
		EMG_MANAGER = eMG_MANAGER;
	}
	
	public String getEMG_MAN_TEL() {
		return EMG_MAN_TEL;
	}
	
	public void setEMG_MAN_TEL(String eMG_MAN_TEL) {
		EMG_MAN_TEL = eMG_MAN_TEL;
	}
	
	public String getCUSTOMER_ADD() {
		return CUSTOMER_ADD;
	}
	
	public void setCUSTOMER_ADD(String cUSTOMER_ADD) {
		CUSTOMER_ADD = cUSTOMER_ADD;
	}
	
	public String getCUSTOMER_MEMO() {
		return CUSTOMER_MEMO;
	}
	
	public void setCUSTOMER_MEMO(String cUSTOMER_MEMO) {
		CUSTOMER_MEMO = cUSTOMER_MEMO;
	}
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	
	public String getCUSTOMER_INSERT_DATE() {
		return CUSTOMER_INSERT_DATE;
	}
	
	public void setCUSTOMER_INSERT_DATE(String cUSTOMER_INSERT_DATE) {
		CUSTOMER_INSERT_DATE = cUSTOMER_INSERT_DATE;
	}
	
	public int getBNO() {
		return BNO;
	}
	
	public void setBNO(int bNO) {
		BNO = bNO;
	}

	@Override
	public String toString() {
		return "CustomerVO [CUSTOMER_COMPANY=" + CUSTOMER_COMPANY + ", CUSTOMER_MANAGER=" + CUSTOMER_MANAGER
				+ ", CUSTOMER_MAN_TEL=" + CUSTOMER_MAN_TEL + ", EMG_MANAGER=" + EMG_MANAGER + ", EMG_MAN_TEL="
				+ EMG_MAN_TEL + ", CUSTOMER_ADD=" + CUSTOMER_ADD + ", CUSTOMER_MEMO=" + CUSTOMER_MEMO + ", MEMBER_ID="
				+ MEMBER_ID + ", CUSTOMER_INSERT_DATE=" + CUSTOMER_INSERT_DATE + ", BNO=" + BNO + "]";
	}
	
	
}
