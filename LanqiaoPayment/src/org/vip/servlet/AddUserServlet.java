package org.vip.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.vip.service.UserService;
public class AddUserServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		UserService userService = new UserService();
		String vaccount = request.getParameter("vaccount");
		String vname =request.getParameter("vname") ; 
		String vcard = request.getParameter("vcard") ; 
		String vdate = request.getParameter("vdate") ;
		String vbalance = request.getParameter("vbalance");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
