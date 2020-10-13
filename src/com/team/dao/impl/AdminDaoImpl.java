package com.team.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.team.JDBC.JDBCConnection;
import com.team.dao.AdminDao;
import com.team.model.Admin;

public class AdminDaoImpl extends JDBCConnection implements AdminDao<Admin> {
	private Connection connect;

	@Override
	public Admin getLogin(String username, String password) {

		String sql = "select * from admin where username like ? and password like ?;";
		connect = super.getConnectionJDBC();
		try {
			PreparedStatement statement = connect.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, password);
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				String usernameJDBC = result.getString("username");
				String passwordJDBC = result.getString("password");
				Admin admin = new Admin(usernameJDBC, passwordJDBC);
				return admin;
			}
			statement.close();
			result.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

}
