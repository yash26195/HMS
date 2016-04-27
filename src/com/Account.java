package com;




import java.sql.Connection;
import java.io.PrintWriter;
import java.util.*;
import java.io.Writer;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Account {
	String dbname="hms";
	String user="root";
	String pass="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/hms";
	
	
	
	
	Connection con;
	public String login(String email,String password) throws Exception{
		dbConnect();
		String status="";
		String sql = "select email from login where email=? and password=?";
		PreparedStatement pstmt= con.prepareStatement(sql);
		pstmt.setString(1,email);
		pstmt.setString(2,password);
		ResultSet rst = pstmt.executeQuery();		
		if(rst.next()){
			status=rst.getString("email");
		
		}
		
		rst.close();	
		pstmt.close();
		dbClose();
		return status;
		
	}
	public void addDoc(String name,String email,String dpt,String phone) throws Exception{
		dbConnect();
		String sql="insert into doctor(dname,dept,demail,dphno) values (?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, dpt);
		pstmt.setString(3, email);
		pstmt.setString(4, phone);

		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void Pres(String pid,String prescription) throws Exception{
		dbConnect();
		String sql="insert into pharma(medname,pid) values (?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, prescription);
		pstmt.setString(2, pid);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void addPatient(String name,String email,String doctor,String number,String description,String ward) throws Exception{
		dbConnect();
		String sql="insert into patients(pname,pemail,pphno,description,doctor,ward) values (?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, number);
		pstmt.setString(4, description);
		pstmt.setString(5,doctor);
		pstmt.setString(6,ward);

		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void deletedoctor(String  email) throws Exception{
		dbConnect();
		String sql="delete from doctor where demail=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
		
	}
	public void deleteapp(String  email) throws Exception{
		dbConnect();
		String sql="delete from appointments where email=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
		
	}
	public void addApp(String name,String email,String doctor,String number,String concern,String time,String date) throws Exception{
		dbConnect();
		String sql="insert into appointments(name,email,phone,concern,time,date,doctor)  values (?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, number);
		pstmt.setString(4, concern);
		pstmt.setString(5,time);
		pstmt.setString(6, date);
		pstmt.setString(7, doctor);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	
	public void addNur(String name,String email,String doctor,String number)throws Exception{	
		String sql="insert into nurse(nname,nemail,nphno,dnname)  values (?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, email);
		pstmt.setString(3, number);
		pstmt.setString(4, doctor);
	
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void deletenurse(String  email) throws Exception{
		dbConnect();
		String sql="delete from nurse where nemail=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
		
	}
	public String check(String  email) throws Exception{
		dbConnect();
		String sql="select pname from patients where pemail=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
		return sql;
		
	}
	public void chngbld(String bldgrp, String amt) throws Exception{
		dbConnect();
		String sql="UPDATE bldbnk SET amt=? where bldgrp=?";
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, amt);
		pstmt.setString(2, bldgrp);
		pstmt.executeUpdate();
		pstmt.close();
		dbClose();
	}
	public void stat(String phar_id, String status) throws Exception{
		dbConnect();
		String sql="UPDATE pharma SET status=? where phar_id=?";
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, status);
		pstmt.setString(2, phar_id);
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
