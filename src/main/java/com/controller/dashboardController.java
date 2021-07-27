package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.admin.Approved;
import com.admin.Disbursed;
import com.admin.FundData;
import com.admin.Rejected;
import com.model.ApplicationModel;
import com.model.displayDataModel;

/**
 * Servlet implementation class dashboardController
 */
@WebServlet("/dashboardController")
public class dashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/FundRequest")
	DataSource dataSource;

	public dashboardController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = request.getParameter("page");

		switch (page) {

		case "fundrequest":
			displayAllFundRequest(request, response);
			request.getRequestDispatcher("fundrequest.jsp").forward(request, response);
			break;

		case "home":
			displayFundRejected(request, response);
			displayFundPending(request, response);
			displayFundApproved(request, response);
			displayFunddisbursed(request, response);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;

		case "approved":
			displayAllFundApproved(request, response);
			request.getRequestDispatcher("approvedfund.jsp").forward(request, response);
			break;

		case "disbursed":
			displayAllFundDisbursed(request, response);
			request.getRequestDispatcher("disbursedfund.jsp").forward(request, response);
			break;

		case "approvenewfund":
			approveNewFunds(request, response);
			break;

		case "rejectedrequest":
			displayAllFundRejected(request, response);
			request.getRequestDispatcher("rejectedrequest.jsp").forward(request, response);
			break;

		case "addnewfund":
			displayAllFundRejected(request, response);
			request.getRequestDispatcher("addfund.jsp").forward(request, response);
			break;

		case "disbursednewfund":
			request.getRequestDispatcher("disbursedaction.jsp").forward(request, response);
			break;

		case "movetoreject":
			request.getRequestDispatcher("fundrejectpage.jsp").forward(request, response);
			break;

		case "report":
			displayAllFundDisbursed(request, response);
			displayAllFundRejected(request, response);
			displayAllFundApproved(request, response);
			displayAllFundRequest(request, response);
			request.getRequestDispatcher("report.jsp").forward(request, response);
			break;

		default:
			request.getRequestDispatcher("/404.jsp").forward(request, response);
		}

	}

	public void approveNewFunds(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/updaterequest.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String form = request.getParameter("form");

		// returning for data to perform add, update and remove operation
		switch (form) {
		case "adduseroperation":
			FundData adduser = new FundData(request.getParameter("purpose"), request.getParameter("amount"),
					request.getParameter("date"), request.getParameter("username"));
			addUserOperation(adduser);
			request.getRequestDispatcher("/addfund.jsp").forward(request, response);
			break;

		case "approverfundoperation":
			Approved approvedfund = new Approved(request.getParameter("username"), request.getParameter("amount"),
					request.getParameter("date"), request.getParameter("purpose"));
			moveToApprov(approvedfund);
			break;

		case "deletefromrequest":
			deletedata(Integer.parseInt(request.getParameter("userid")));
			request.getRequestDispatcher("dashboardController?page=home").forward(request, response);
			break;

		case "adisbursefundoperation":
			Disbursed disbursed = new Disbursed(request.getParameter("username"), request.getParameter("amount"),
					request.getParameter("date"), request.getParameter("purpose"));
			moveToDisbursed(disbursed);
			response.sendRedirect(request.getContextPath());
			break;

		case "fundrejectoperation":
			Rejected rejectedFunds = new Rejected(request.getParameter("username"), request.getParameter("amount"),
					request.getParameter("date"), request.getParameter("purpose"));
			moveToRejected(rejectedFunds);
			deletedata(Integer.parseInt(request.getParameter("userid")));

		default:
			request.getRequestDispatcher("/addfund.jsp").forward(request, response);

		}

		// returning the form id mainly for deleting data after updating respective
		// table
		String param = request.getParameter("form");

		switch (param) {
		case "approverfundoperation":
			deletedata(Integer.parseInt(request.getParameter("userid")));
			response.sendRedirect(request.getContextPath() + "/dashboardController?page=home");
			break;

		case "adisbursefundoperation":
			deletefromApproved(Integer.parseInt(request.getParameter("userid")));

			break;

		default:
			response.sendRedirect(request.getContextPath());

		}
	}

	public void moveToRejected(Rejected rejectedFunds) {
		new ApplicationModel().moveFundsToRejected(dataSource, rejectedFunds);

	}

	// Deleting record from approved table after updating the bisbursed table
	public void deletefromApproved(int userID) {
		new ApplicationModel().deleteFromFundsApproved(dataSource, userID);

	}

	// moving records from approved table to disbursed table
	public void moveToDisbursed(Disbursed disbursed) {
		new ApplicationModel().moveFundsToDisbursed(dataSource, disbursed);

	}

	public void deletedata(int userid) {
		new ApplicationModel().deleteFromFundsRequest(dataSource, userid);
		// return
	}

	// Moving data from request to approved
	public void moveToApprov(Approved approvedfund) {
		new ApplicationModel().moveFundsToApprove(dataSource, approvedfund);
		// request.getRequestDispatcher("dashboardController?page=home").forward(request,
		// response);

	}

	// Adding the new request
	public void addUserOperation(FundData addUser) {
		new ApplicationModel().addUser(dataSource, addUser);

	}

	// displaying all request pending data
	public void displayFundPending(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<FundData> fundRequest = new ArrayList<>();

		fundRequest = new ApplicationModel().pendingFunds(dataSource);
		for (FundData fundData : fundRequest) {
			request.setAttribute("pendingFund", fundData.getPendingRequest());
		}

	}

	// displaying all funds rejected data
	public void displayFundRejected(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Rejected> fundRejected = new ArrayList<>();

		fundRejected = new ApplicationModel().rejectedFunds(dataSource);

		for (Rejected fundData : fundRejected) {
			request.setAttribute("rejectedFund", fundData.getRejectedRequest());
		}
	}

	// displaying all funds approved data
	public void displayFundApproved(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Approved> fundApproved = new ArrayList<>();

		fundApproved = new ApplicationModel().approvedFunds(dataSource);
		for (Approved fundData : fundApproved) {
			request.setAttribute("approvedFund", fundData.getApprovedRequest());
			// request.getRequestDispatcher("approvedfund.jsp").forward(request, response);

		}
	}

	// displaying all fund disbursed
	public void displayFunddisbursed(HttpServletRequest request, HttpServletResponse response) {

		List<Disbursed> funddisbursed = new ArrayList<>();

		funddisbursed = new ApplicationModel().disbursedFunds(dataSource);

		for (Disbursed fundData : funddisbursed) {
			request.setAttribute("disbursedFund", fundData.getDisbursedRequest());

		}

	}

	public void displayAllFundRequest(HttpServletRequest request, HttpServletResponse response) {

		List<FundData> allFundRequest = new ArrayList<>();
		allFundRequest = new displayDataModel().displayAllRequest(dataSource);
		request.setAttribute("allFunds", allFundRequest);

	}

	// display all approved funds in a table
	public void displayAllFundApproved(HttpServletRequest request, HttpServletResponse response) {
		List<Approved> allFundApproved = new ArrayList<>();
		allFundApproved = new displayDataModel().displayAllApproved(dataSource);
		request.setAttribute("approvedFunds", allFundApproved);

	}

	public void displayAllFundDisbursed(HttpServletRequest request, HttpServletResponse response) {
		List<Disbursed> allFundDisbursed = new ArrayList<>();
		allFundDisbursed = new displayDataModel().displayAllDisbursed(dataSource);
		request.setAttribute("disbursedFunds", allFundDisbursed);

		
	}

	public void displayAllFundRejected(HttpServletRequest request, HttpServletResponse response) {
		List<Rejected> allFundRejected = new ArrayList<>();
		allFundRejected = new displayDataModel().displayAllRejected(dataSource);
		request.setAttribute("rejectedRequest", allFundRejected);

	}

}
