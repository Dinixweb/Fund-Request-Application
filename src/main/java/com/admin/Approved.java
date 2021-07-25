package com.admin;

public class Approved {
	
	String approvedRequest;
	
	int fundReqID;
	String purpose;
	String requestDate;
	String userName;
	
	
	
	public Approved(String approvedRequest, int fundReqID, String purpose, String requestDate, String userName) {
		super();
		this.approvedRequest = approvedRequest;
		this.fundReqID = fundReqID;
		this.purpose = purpose;
		this.requestDate = requestDate;
		this.userName = userName;
	}
	
	public Approved( String userName,  String approvedRequest, String requestDate,String purpose ) {
		super();
		this.approvedRequest = approvedRequest;
		this.fundReqID = fundReqID;
		this.purpose = purpose;
		this.requestDate = requestDate;
		this.userName = userName;
	}
	
	

	public int getFundReqID() {
		return fundReqID;
	}



	public void setFundReqID(int fundReqID) {
		this.fundReqID = fundReqID;
	}



	public String getPurpose() {
		return purpose;
	}



	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}



	public String getRequestDate() {
		return requestDate;
	}



	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public Approved(String approvedRequest){
		this.approvedRequest = approvedRequest;
	}
	
	public String getApprovedRequest() {
		return approvedRequest;
	}
	public void setApprovedRequest(String approvedRequest) {
		this.approvedRequest = approvedRequest;
	}

}
