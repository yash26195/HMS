package com;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action==null)
		{
			request.getRequestDispatcher("index1.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		
		if(action.equals("login"))
		{
			PrintWriter out=response.getWriter();
			String email=request.getParameter("email");
			String password=request.getParameter("password");
		
	if(email.equals("admin@gmail.com") && password.equals("123"))
	{
		request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
	}
	else{		Account account=new Account();
				String status="";
				try {
					status = account.login(email, password);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
			
								if(status!=null)
			{
					
					request.setAttribute("status", status);
					request.getRequestDispatcher("admin/view_patient.jsp").forward(request, response);
				
						
				}
				if(status==null)
				{
					request.getRequestDispatcher("index1.jsp").forward(request, response);
				}
					
				
	}
		
		
	}
	}
}



