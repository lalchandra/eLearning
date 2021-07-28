package dao;

import java.sql.*;
import java.util.*;
import dbutil.DBUtil;
import pojo.Course;

public class CourseDao {
	
	
	public static List<Course> getAllCourse()
	{
		List<Course> courseList = new ArrayList<Course>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM course");
			while(rs.next())
			{
				int cId = rs.getInt("course_id");
				String cName = rs.getString("c_name");
				String cDesp = rs.getString("c_desp");
				String cFees = rs.getString("c_fees");
				String cResource = rs.getString("c_resource");
				
				Course course = new Course(cId, cName, cDesp, cFees, cResource);
			    courseList.add(course);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return courseList;
	}
	
	
	public static Course getCourseById(String courseId)
	{
		Course course = null;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM course WHERE course_id = ?");
			ps.setString(1, courseId);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				int cId = rs.getInt("course_id");
				String cName = rs.getString("c_name");
				String cDesp = rs.getString("c_desp");
				String cFees = rs.getString("c_fees");
				String cResource = rs.getString("c_resource");
				
				course = new Course(cId, cName, cDesp, cFees, cResource);

			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return course;
	}
	
	
	public static int addCourse(Course course)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO course VALUES(?,?,?,?,?)");
			ps.setInt(1, course.getCourseId());
			ps.setString(2, course.getCourseName());
			ps.setString(3, course.getCourseDesp());
			ps.setString(4, course.getCourseFee());
			ps.setString(5, course.getCourseResource());
			
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int updateCourse(Course course)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE product SET c_name=?, c_desp=?, c_fees=?, c_resource=? WHERE course_id=?");
			ps.setInt(1, course.getCourseId());
			ps.setString(2, course.getCourseName());
			ps.setString(3, course.getCourseDesp());
			ps.setString(4, course.getCourseFee());
			ps.setString(5, course.getCourseResource());		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int deleteCourse(String courseId)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM course where course_id = ?");
			ps.setString(1, courseId);
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}
