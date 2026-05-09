package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.bean.Employee;
import com.bean.EmployeeInfo;
import com.dao.Studentdao;

@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert")) {
			
			EmployeeInfo ep = new EmployeeInfo();
			ep.setFname(request.getParameter("fname"));
			ep.setLname(request.getParameter("lname"));
			ep.setEmail(request.getParameter("email"));
			ep.setMobile(request.getParameter("mobile"));
			
			Studentdao.insertEmployeeInfo(ep);
			
			Employee e=new Employee();
			e.setDname(request.getParameter("dname"));
			e.setSalary(Double.parseDouble(request.getParameter("salary")));
			e.setEinfo(ep);
			Studentdao.insertEmployee(e);
			response.sendRedirect("show.jsp");
			
			
			
			
			
		}
		
	}

}
