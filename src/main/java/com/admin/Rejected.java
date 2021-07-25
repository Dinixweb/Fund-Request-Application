package com.admin;

public class Rejected {


	String rejectedRequest;
	
	int fundReqID;
	String purpose;
	String requestDate;
	String userName;
	
	
	
	public Rejected(String rejectedRequest, int fundReqID, String purpose, String requestDate, String userName) {
		super();
		this.rejectedRequest = rejectedRequest;
		this.fundReqID = fundReqID;
		this.purpose = purpose;
		this.requestDate = requestDate;
		this.userName = userName;
	}
	
	public Rejected(String userName, String rejectedRequest,  String requestDate,  String purpose) {
		super();
		this.rejectedRequest = rejectedRequest;
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



	public Rejected(String rejectedRequest){
		this.rejectedRequest = rejectedRequest;
	}
	

	public String getRejectedRequest() {
		return rejectedRequest;
	}
	public void setRejectedRequest(String rejectedRequest) {
		this.rejectedRequest = rejectedRequest;
	}
	
}
