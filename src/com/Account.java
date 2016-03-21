package com;



import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Account {
	String dbname="dna";
	String user="root";
	String pass="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/hospital";
	
	Connection con;
	public void addDoc(String name,String email,String dpt,String phone) throws Exception{
		dbConnect();
		String sql="insert into doctor(name,email,dpt,phone)  values (?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, dpt);
		pstmt.setString(4, phone);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void deletedoctor(String  email) throws Exception{
		dbConnect();
		String sql="delete from doctor where email=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
		
	}
	private void dbConnect() throws Exception{
		Class.forName(driver);
		con = DriverManager.getConnection(url,user,pass);
		
	}
	private void dbClose() throws Exception{
		con.close();
	}

}
