package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.admin.UserData;

public class userAccountModel {
	
	
	Connection conn = null;
	PreparedStatement pst = null;
	Statement smt = null;
	ResultSet rs = null;
	
	
	
	public void addUser(DataSource dataSource, UserData addUser){
		
		try {
					
			conn=dataSource.getConnection();
			
			String query = "Insert into users(firstname, lastname, email, password, Department) Values(?,?,?,?,?)";
			
			
			pst = conn.prepareStatement(query);
			
			pst.setString(1, addUser.getFirstname());
			pst.setString(2, addUser.getLastname());
			pst.setString(3, addUser.getEmail());
			pst.setString(4, addUser.getPassword());
			pst.setString(5, addUser.getDepartment());
			
			
			pst.execute();
			
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
	
public List<UserData> displayUsers(DataSource dataSource){
		
	List<UserData> displayUser =new ArrayList<>();
	
		try {
					
			conn=dataSource.getConnection();
			
			String query = "Select firstname, lastname, email, password, Department from users";

			smt = conn.createStatement();
			
			rs = smt.executeQuery(query);
			
			while(rs.next()) {
				
				displayUser.add(new UserData(rs.getString("firstname"),rs.getString("lastname"),rs.getString("email"),
						rs.getString("password"), rs.getString("department")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return displayUser;


	}

}













