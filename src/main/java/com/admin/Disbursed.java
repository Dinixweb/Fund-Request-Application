package com.admin;

public class Disbursed {
	
	String disbursedRequest;
	
	int fundReqID;
	String purpose;
	String requestDate;
	String userName;
	
	
	
	public Disbursed(String disbursedRequest, int fundReqID, String purpose, String requestDate, String userName) {
		super();
		this.disbursedRequest = disbursedRequest;
		this.fundReqID = fundReqID;
		this.purpose = purpose;
		this.requestDate = requestDate;
		this.userName = userName;
	}
	
	public Disbursed(String userName, String disbursedRequest, String requestDate, String purpose) {
		super();
		this.disbursedRequest = disbursedRequest;
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

	public Disbursed(String disbursedRequest) {
		this.disbursedRequest = disbursedRequest;
		
	}
	public String getDisbursedRequest() {
		return disbursedRequest;
	}
	public void setDisbursedRequest(String disbursedRequest) {
		this.disbursedRequest = disbursedRequest;
		
	}

}
