package com.reg.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/registers")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException ,NullPointerException{
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String pwd=request.getParameter("pwd");
		String type=request.getParameter("type");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String pcode=request.getParameter("pcode");
	    RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:8082/user?useSSL=false","root","root");
			PreparedStatement pst=con.prepareStatement("insert into user3(fname,lname,pwd,type,email,phone,address,pcode) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, pwd);
			pst.setString(4, type);
			pst.setString(5, email);
			pst.setString(6, phone);
			pst.setString(7, address);
			pst.setString(8, pcode);
			
			int rowCount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("Registration.jsp");
			if(rowCount>0) {
				request.setAttribute("status","success"); 
				
			}
			else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			
		}
		
		
	}
}

