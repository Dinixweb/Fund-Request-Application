package com.admin;

import java.util.ArrayList;
import java.util.List;

public class FundData {
	
	String pendingRequest;
	int fundReqID;
	String purpose;
	String requestDate;
	String userName;

	
	

	
	public FundData (int fundReqID, String userName, String pendingRequest, String purpose, String requestDate) {
		super();
		this.pendingRequest = pendingRequest;
		this.fundReqID = fundReqID;
		this.purpose = purpose;
		this.requestDate = requestDate;
		this.userName = userName;
	}
	public FundData (String purpose, String pendingRequest, String requestDate, String userName) {
		super();
		this.pendingRequest = pendingRequest;
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

	
	public FundData(String pendingRequest) {
		this.pendingRequest = pendingRequest;
	}
	

	public String getPendingRequest() {
		return pendingRequest;
	}
	public void setPendingRequest(String pendingRequest) {
		this.pendingRequest = pendingRequest;
	}

	



	
}

