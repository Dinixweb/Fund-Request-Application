package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.admin.UserData;
import com.model.userAccountModel;

@WebServlet("/useraccountController")
public class useraccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/FundRequest")
	DataSource dataSource;

	public useraccountController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = request.getParameter("page");

		switch (page) {

		case "addnewuser":
			// displayAllFundApproved(request, response);
			request.getRequestDispatcher("addnewuser.jsp").forward(request, response);
			break;

		case "userlist":
			displayUserDetails(request, response);
			request.getRequestDispatcher("userlist.jsp").forward(request, response);
			break;

		case "edituser":
			request.getRequestDispatcher("edituser.jsp").forward(request, response);

		}

	}

	public void displayUserDetails(HttpServletRequest request, HttpServletResponse response) {

		List<UserData> list = new ArrayList<>();
		list = new userAccountModel().displayUsers(dataSource);
		request.setAttribute("user", list);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		String formtype = request.getParameter("form");
		

		switch (formtype) {

		case "adduseraccountoperation":
			UserData addUser = new UserData(request.getParameter("firstname"), request.getParameter("lastname"),
					request.getParameter("email"), request.getParameter("password"),
					request.getParameter("department"));
			addUserAccount(addUser);
			response.sendRedirect(request.getContextPath()+"/useraccountController?page=userlist");
			break;
			
			default:
				request.getRequestDispatcher("dashboardController?page=home").forward(request, response);
		}

	}

	public void addUserAccount(UserData addUser) {
		new userAccountModel().addUser(dataSource, addUser);

	}

}
