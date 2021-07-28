package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtil;
import pojo.Contact;
import pojo.Feedback;

public class FeedbackDao {
   

	public static List<Feedback> getAllFeedback()
	{
		List<Feedback> feedbackList = new ArrayList<Feedback>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM feedback");
			while(rs.next())
			{
				int uId = rs.getInt("user_id");
				String uName = rs.getString("name");
				String email = rs.getString("email");
				int fId = rs.getInt("f_id");
				String feed =  rs.getString("feedback");
				
				
				  
				
				Feedback feedback = new Feedback(uId, uName, email, fId, feed);
			    feedbackList.add(feedback);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return feedbackList;
	}
 
	public static int addFeedback(Feedback feedback)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO feedback VALUES(?,?,?,?,?)");
			ps.setInt(1, feedback.getUserId());
			ps.setString(2, feedback.getName());
			ps.setString(3, feedback.getEmail());
		
			ps.setInt(4, feedback.getfId());
			ps.setString(5, feedback.getFeedback());
			
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}


	
}
