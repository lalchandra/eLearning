package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtil;
import pojo.Contact;
import pojo.Course;
import pojo.User;

public class ContactDao {

	
	
	public static List<Contact> getAllContact()
	{
		List<Contact> contactList = new ArrayList<Contact>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM contact");
			while(rs.next())
			{
				int uId = rs.getInt("user_id");
				String uName = rs.getString("name");
				String email = rs.getString("Email");
				long phone = rs.getLong("Phone_no");
				String message =  rs.getString("Messege");
				int contactId = rs.getInt("contact_id");
				
				  
				
				Contact contact = new Contact(uId, uName, email, phone, message, contactId);
			    contactList.add(contact);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return contactList;
	}
  
  
	public static int addContact(Contact contact)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO contact VALUES(?,?,?,?,?,?)");
			ps.setInt(1, contact.getUserId());
			ps.setString(2, contact.getName());
			ps.setString(3, contact.getEmail());
			ps.setLong(4, contact.getPhone());
			ps.setString(5, contact.getMessage());
			ps.setInt(6, contact.getContactId());
			
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
 
	
}
