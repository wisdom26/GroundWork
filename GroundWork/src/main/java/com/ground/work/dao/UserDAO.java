package com.ground.work.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ground.work.entities.*;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean userRegister(User us) {
		boolean f =false;
		try {
			String qu="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(qu);
			ps.setString(1,us.getUsername() );
			ps.setString(2,us.getEmail() );
			ps.setString(1,us.getPassword() );
			ps.setString(1,us.getGender() );
			ps.setString(1,us.getAbout() );
			ps.executeUpdate();
			f=true;
			
			
			
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			
			
		}
		return f;
				
	
	}
	public User getLogin(String em,String ps)
	{
		User us=null;
		try {
			
			String qu="select * from user where email=? and password=?";
			PreparedStatement pst=conn.prepareStatement(qu);
			pst.setString(1,em);
			pst.setString(2, ps);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) 
			{
				 us=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(3),rs.getString(3),rs.getString(3));
				 
				 
				
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return us;
	}

}
