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

public class displayDataModel {

	Connection conn = null;
	Statement smt = null;
	ResultSet rs = null;

	public List<FundData> displayAllRequest(DataSource dataSource) {

		List<FundData> displayRequest = new ArrayList<>();

		String query = "Select fundrequestID, purpose, requestdate, name_of_requester, format(amount, 'C') AS amount from userfundrequest";

		try {
			conn = dataSource.getConnection();

			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {
				// int fundReqID, String userName, String pendingRequest, String purpose, String
				// requestDate
				displayRequest.add(new FundData(rs.getInt("fundrequestID"), rs.getString("name_of_requester"),
						rs.getString("amount"), rs.getString("purpose"), rs.getString("requestdate")));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return displayRequest;

	}

	public List<Approved> displayAllApproved(DataSource dataSource) {

		List<Approved> displayApproved = new ArrayList<>();

		String query = "Select fundapprovedID, purpose, approveddate, name_of_requester, format(amount, 'C') AS amount from userfundapproved";

		try {
			conn = dataSource.getConnection();

			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				displayApproved.add(new Approved(rs.getString("name_of_requester"),rs.getInt("fundapprovedID"),
						rs.getString("amount"), rs.getString("purpose"), rs.getString("approveddate")));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return displayApproved;

	}

	public List<Disbursed> displayAllDisbursed(DataSource dataSource) {

		List<Disbursed> displayDisbursed = new ArrayList<>();

		String query = "Select funddisbursedID, purpose, disburseddate, name_of_requester, format(amount, 'C') AS amount from userfunddisbursed";

		try {
			conn = dataSource.getConnection();

			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				displayDisbursed.add(new Disbursed(rs.getString("name_of_requester"), rs.getInt("funddisbursedID"),
						rs.getString("amount"), rs.getString("purpose"), rs.getString("disburseddate")));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return displayDisbursed;

	}

	public List<Rejected> displayAllRejected(DataSource dataSource) {

		List<Rejected> displayRejected = new ArrayList<>();

		String query = "Select fundrejectedID, purpose, requestdate, name_of_requester, format(amount, 'C') AS amount from userfundrejected";

		try {
			conn = dataSource.getConnection();

			smt = conn.createStatement();

			rs = smt.executeQuery(query);

			while (rs.next()) {

				displayRejected.add(new Rejected(rs.getString("name_of_requester"), rs.getInt("fundrejectedID"),
						rs.getString("amount"), rs.getString("purpose"), rs.getString("requestdate")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return displayRejected;

	}

}
