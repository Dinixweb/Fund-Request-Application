package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.admin.Approved;
import com.admin.Disbursed;
import com.admin.FundData;
import com.admin.Rejected;

public class ApplicationModel {

	Connection conn = null;
	Statement smt = null;
	ResultSet rs = null;
	PreparedStatement pst = null;

	public List<FundData> pendingFunds(DataSource dataSource) {
		List<FundData> fundRequest = new ArrayList<>();

		try {
			conn = dataSource.getConnection();
			String query = "Select format(SUM(amount), 'C') amount from userfundrequest";
			smt = conn.createStatement();
			rs = smt.executeQuery(query);

			while (rs.next()) {

				fundRequest.add(new FundData(rs.getString("amount")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return fundRequest;

	}

	public List<Rejected> rejectedFunds(DataSource dataSource) {

		List<Rejected> rejectedFund = new ArrayList<>();

		try {
			conn = dataSource.getConnection();
			String query = "Select  format(SUM(amount), 'C') amount from userfundrejected";
			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				rejectedFund.add(new Rejected(rs.getString("amount")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rejectedFund;
	}

	public List<Approved> approvedFunds(DataSource dataSource) {

		List<Approved> approvedFund = new ArrayList<>();

		try {
			conn = dataSource.getConnection();
			String query = "Select  format(SUM(amount), 'C') amount from userfundapproved";
			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				approvedFund.add(new Approved(rs.getString("amount")));

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		return approvedFund;

	}

	public List<Disbursed> disbursedFunds(DataSource dataSource) {

		List<Disbursed> disbursedFund = new ArrayList<>();

		try {
			conn = dataSource.getConnection();
			String query = "Select  format(SUM(amount), 'C') amount from userfunddisbursed";
			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				disbursedFund.add(new Disbursed(rs.getString("amount")));

			}
		}

		catch (SQLException x) {

		} 

		return disbursedFund;

	}

	public void addUser(DataSource dataSource, FundData addUser) {

		try {
			conn = dataSource.getConnection();

			String query = "insert into userfundrequest(purpose, amount, requestdate, name_of_requester) values(?,?,?,?)";

			pst = conn.prepareStatement(query);

			pst.setString(1, addUser.getPurpose());
			pst.setString(2, addUser.getPendingRequest());
			pst.setString(3, addUser.getRequestDate());
			pst.setString(4, addUser.getUserName());

			pst.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
	public void moveFundsToApprove(DataSource dataSource, Approved approveFunds) {

		try {
			conn = dataSource.getConnection();

			String query = "insert into userfundapproved(purpose, amount, approveddate, name_of_requester) values(?,?,?,?)";

			pst = conn.prepareStatement(query);
			pst.setString(1, approveFunds.getPurpose());
			pst.setString(2, approveFunds.getApprovedRequest());
			pst.setString(3, approveFunds.getRequestDate());
			pst.setString(4, approveFunds.getUserName());

			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
	
	public void moveFundsToDisbursed(DataSource dataSource, Disbursed disbursedFunds) {

		try {
			conn = dataSource.getConnection();

			String query = "insert into userfunddisbursed(purpose, amount, disburseddate, name_of_requester) values(?,?,?,?)";

			pst = conn.prepareStatement(query);
			pst.setString(1, disbursedFunds.getPurpose());
			pst.setString(2, disbursedFunds.getDisbursedRequest());
			pst.setString(3, disbursedFunds.getRequestDate());
			pst.setString(4, disbursedFunds.getUserName());

			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
	
	public void moveFundsToRejected(DataSource dataSource, Rejected rejectedFunds) {

		try {
			conn = dataSource.getConnection();

			String query = "insert into userfundrejected(purpose, amount, requestdate, name_of_requester) values(?,?,?,?)";

			pst = conn.prepareStatement(query);
			pst.setString(1, rejectedFunds.getPurpose());
			pst.setString(2, rejectedFunds.getRejectedRequest());
			pst.setString(3, rejectedFunds.getRequestDate());
			pst.setString(4, rejectedFunds.getUserName());

			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				conn.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

	}
	
	public void deleteFromFundsRequest(DataSource dataSource, int requestID) {

		try {
			conn = dataSource.getConnection();

			String query = "delete from userfundrequest where fundrequestID = ? " ;

			pst = conn.prepareStatement(query);
			pst.setInt(1, requestID);
			

			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 


	}
	
	public void deleteFromFundsApproved(DataSource dataSource, int requestID) {

		try {
			conn = dataSource.getConnection();

			String query = "delete from userfundapproved where fundapprovedID = ? " ;

			pst = conn.prepareStatement(query);
			pst.setInt(1, requestID);
			

			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 


	}

}
