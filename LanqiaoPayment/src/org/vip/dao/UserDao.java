package org.vip.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.vip.entity.User;

import Util.DBUtil;

public class UserDao {
	private static final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String UNAME = "scott";
	private static final String UPWD = "tiger";

	//查看用户是否存在1
	public boolean isExist(String vaccount){
		return queryUserById(vaccount)==null?false:true;
	}
	//增加用户
	public boolean AddUser(User user){
		Connection connection = null;
		PreparedStatement pstmt = null;
		try {
			DBUtil.getConnection();
			String sql = "insert into vip values(?,?,?,?,?,?)";
			pstmt = connection.prepareStatement(sql);
			int count = pstmt.executeUpdate();
			if(count>0)return true;
			else return false;
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		}catch(SQLException e){
			e.printStackTrace();
			return false;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	//根据用户账号查询此账号是否存在
	public static User queryUserById(String vaccount){
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user =null;
		try{
			DBUtil.getConnection();
			String sql = "select * from vip where vaccount=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,vaccount);
			rs = pstmt.executeQuery();
			if(rs.next()){
				String pwd = rs.getString("vpwd");
				String payPwd = rs.getString("payPwd");
				String  account = rs.getString("vaccount")  ;
				String name = rs.getString("vname") ; 
				String card = rs.getString("vcard"); 
				String date = rs.getString("vdate")  ;
				String balance = rs.getString("vbalance");
				user = new User(pwd,payPwd,account,name,card,date,balance);
			}
			return user;
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	//查询所有用户
	public List<User> queryAllUser(){
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		List<User> userList = new ArrayList<>();
		try {
			DBUtil.getConnection();
			String sql = "select * from vip";
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String vpwd = rs.getString("vpwd");
				String payPwd = rs.getString("payPwd");
				String  account = rs.getString("vaccount")  ;
				String name = rs.getString("vname") ; 
				String card = rs.getString("vcard"); 
				String date = rs.getString("vdate")  ;
				String balance = rs.getString("vbalance");
				user = new User(vpwd,payPwd,account,name,card,date,balance);
				userList.add(user);
			 }
		return userList;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	

}
