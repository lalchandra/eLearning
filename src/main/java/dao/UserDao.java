package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.*;
import dbutil.DBUtil;
import pojo.User;

public class UserDao {

	
	public static List<User> getAllUser()
	{
		List<User> userList = new ArrayList<User>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM user1");
			while(rs.next())
			{
				int uId = rs.getInt("user_id");
				String uName = rs.getString("name");
				long phone = rs.getLong("phone_no");
				String email = rs.getString("email");
				String address =  rs.getString("address");
				java.sql.Date dbSqlDate = rs.getDate(6);
				String pass = rs.getString("password");
				String photo = rs.getString("upload_photo");
				
				DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");

				String date = formatter.format(dbSqlDate); 
				  
				
				User user = new User(uId,uName,phone,email,address,date,pass,photo);
			    userList.add(user);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return userList;
	}
  
	public static int addUser(User user)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO user1 VALUES(?,?,?,?,?,?,?,?)");
			ps.setInt(1, user.getUserId());
			ps.setString(2, user.getName());
			ps.setLong(3, user.getPhone());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getAddress());
			
			Date date = new Date();
			java.sql.Date sqldate = new java.sql.Date(date.getTime());
			ps.setDate(6, sqldate);
			
			ps.setString(7, user.getPassword());
			ps.setString(8, user.getPhoto());
			
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int deleteUser(String userId)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM user1 where user_id = ?");
			ps.setString(1, userId);
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

}
