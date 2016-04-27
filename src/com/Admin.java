package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Account;

public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null)
		{
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else
		{
			doPost(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		PrintWriter out=response.getWriter();
		if(action.equals("add_doc"))
		{
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String dpt=request.getParameter("dpt");
			String phone=request.getParameter("phone");
		
			
			Account account=new Account();
			try {
				account.addDoc(name, email, dpt, phone);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-doc.jsp").forward(request, response);
		}
		
		if(action.equals("deldoc") )
		{
			String email=request.getParameter("email");
			Account account=new Account();
			try {
				account.deletedoctor(email);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-doc.jsp").forward(request, response);
			}

		
		if(action.equals("add_nur"))
		{

			Account account=new Account();
			String name=request.getParameter("name");
			
			String email=request.getParameter("email");
			String doctor=request.getParameter("doctor");
			String number=request.getParameter("number");
			
			
		try {
				account.addNur(name, email ,doctor, number);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-nur.jsp").forward(request, response);
			
		}
		if(action.equals("delnurse"))
		{

			String email=request.getParameter("email");
			Account account=new Account();
			try {
				account.deletenurse(email);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-nur.jsp").forward(request, response);
			}
		if(action.equals("add_ap"))
		{
			Account account=new Account();
			String name=request.getParameter("name");
			
			String email=request.getParameter("email");
			String doctor=request.getParameter("doctor");
			String number=request.getParameter("number");
			
			String concern=request.getParameter("concern");
			
			String time=request.getParameter("time");
			String date=request.getParameter("date");
			try {
				account.addApp(name, email, doctor, number, concern, time, date);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-ap.jsp").forward(request, response);
		}
		if(action.equals("view_app"))
		{
			String name=request.getParameter("name");
			request.setAttribute("name", name);
			request.getRequestDispatcher("admin/view_app.jsp").forward(request, response);
		}
		if(action.equals("view_report"))
		{
			String email=request.getParameter("email");
			request.setAttribute("email", email);
			request.getRequestDispatcher("admin/report.jsp").forward(request, response);	
		}
		if(action.equals("delapp"))
		{
			Account account=new Account();
			String email=request.getParameter("email");
			try {
				account.deleteapp(email);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-ap.jsp").forward(request, response);
		}
		if(action.equals("chngbld"))
		{
			Account account=new Account();
			String bldgrp=request.getParameter("bldgrp");
			String amt=request.getParameter("amt");
		try {
			account.chngbld(bldgrp, amt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			request.getRequestDispatcher("admin/ad-hbldbnk.jsp").forward(request, response);
		
	
		}
		if(action.equals("add_patient"))
		{
			Account account=new Account();
			String name=request.getParameter("name");
			
			String email=request.getParameter("email");
			String doctor=request.getParameter("doctor");
			String number=request.getParameter("number");
			
			String description=request.getParameter("description");
			
			String ward=request.getParameter("ward");
			
			try {
				account.addPatient(name, email, doctor, number, description, ward);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/ad-pat.jsp").forward(request, response);
		}
		if(action.equals("stat"))
		{
			Account account=new Account();
			String status=request.getParameter("status");
			String phar_id=request.getParameter("phar_id");

			
		try {
			account.stat(phar_id,status);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			request.getRequestDispatcher("admin/ad-phar.jsp").forward(request, response);
		
	
		}
		if(action.equals("pres"))
		{
			String email=request.getParameter("email");
			request.setAttribute("email", email);
			request.getRequestDispatcher("admin/presp.jsp").forward(request, response);	
		}
		if(action.equals("cribe"))
		{
			String prescription=request.getParameter("prescription");
			String pid=request.getParameter("pid");
		
			Account account =new Account();
			try {
				account.Pres(pid, prescription);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("admin/phar.jsp").forward(request, response);	
		}


		
		
		
	}

}
