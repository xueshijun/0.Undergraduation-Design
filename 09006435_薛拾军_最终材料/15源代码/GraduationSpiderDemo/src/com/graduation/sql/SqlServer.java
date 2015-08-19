package com.graduation.sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.graduation.entity.EntityJingDong;

public class SqlServer {

	public boolean insert(EntityJingDong mEntityJingDong) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=SHOPDB",
					"sa", "pass");
			PreparedStatement pstate = conn
					.prepareStatement("insert into JingDong (JNum,JTitle,JUrl,JCategory,JPrice) values(?,?,?,?,?)");

			pstate.setString(1, mEntityJingDong.getNum());
			pstate.setString(2, mEntityJingDong.getTitle());
			pstate.setString(3, mEntityJingDong.getUrl());
			pstate.setString(4, mEntityJingDong.getCategory());
			pstate.setString(5, mEntityJingDong.getPrice());
			if (pstate.executeUpdate() == 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			System.out.println("SQLException");
			System.out.print(e.toString());
			return false;
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			System.out.print(e.toString());
			return false;
		}
	}

	public boolean select(int id) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=SHOPDB",
					"sa", "pass");
			PreparedStatement pstate = conn
					.prepareStatement("select JID,JNum,JTitle,JUrl,JCategory,JPrice from JingDong where JID=?");
			pstate.setInt(1, id);
			ResultSet rs = pstate.executeQuery();
			if (rs.next()) {
				return true;
			}
			return false;
		} catch (SQLException e) {
			System.out.println("SQLException");
			System.out.print(e.toString());
			return false;
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			System.out.print(e.toString());
			return false;
		}
	}

	public boolean update(EntityJingDong mEntityJingDong) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=SHOPDB",
					"sa", "pass");
			PreparedStatement pstate = conn
					.prepareStatement("update JingDong set JNum=?,JTitle=?,JUrl=?,JCategory=?,JPrice=? where JID=? ");

			pstate.setString(1, mEntityJingDong.getNum());
			pstate.setString(2, mEntityJingDong.getTitle());
			pstate.setString(3, mEntityJingDong.getUrl());
			pstate.setString(4, mEntityJingDong.getCategory());
			pstate.setString(5, mEntityJingDong.getPrice());
			pstate.setInt(6, mEntityJingDong.getID());
			if (pstate.executeUpdate() == 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			System.out.println("SQLException");
			System.out.print(e.toString());
			return false;
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			System.out.print(e.toString());
			return false;
		}
	}

	public boolean delete(int id) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=SHOPDB",
					"sa", "pass");
			PreparedStatement pstate = conn
					.prepareStatement("delete from JingDong where JID=?");
			pstate.setInt(1, id);
			if (pstate.executeUpdate() == 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			System.out.println("SQLException");
			System.out.print(e.toString());
			return false;
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			System.out.print(e.toString());
			return false;
		}
	}

	public EntityJingDong get(int id) {
		EntityJingDong entityJingDong = new EntityJingDong();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(
					"jdbc:sqlserver://127.0.0.1:1433;DatabaseName=SHOPDB",
					"sa", "pass");
			PreparedStatement pstate = conn
					.prepareStatement("select JID,JNum,JTitle,JUrl,JCategory,JPrice from JingDong where JID=?");
			pstate.setInt(1, id);
			ResultSet rs = pstate.executeQuery();
			while (rs.next()) { 
				entityJingDong.setID(rs.getInt(1));
				entityJingDong.setNum(rs.getString(2));
				entityJingDong.setTitle(rs.getString(3));
				entityJingDong.setUrl(rs.getString(4));
				entityJingDong.setCategory(rs.getString(5));
				entityJingDong.setPrice(rs.getString(6)); 
			}
			return entityJingDong;
		} catch (SQLException e) {
			System.out.println("SQLException");
			System.out.print(e.toString());
			return null;
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			System.out.print(e.toString());
			return null;
		}
	}
}
