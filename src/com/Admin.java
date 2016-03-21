package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
	}

}
