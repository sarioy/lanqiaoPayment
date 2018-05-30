package org.vip.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.vip.entity.User;
import org.vip.service.UserService;
public class AddUserServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String vaccount = request.getParameter("vaccount");
		if(vaccount==null){
			System.out.println("kong");
		}else{
			System.out.println(vaccount);
		}
		
		
//		String vcard = request.getParameter("vcard") ; 
//		String vname =request.getParameter("userName") ; 
//		String vpwd = request.getParameter("vpwd");
//		String vpwdCipher = request.getParameter("vpwdCipher");
//		if(!vpwd.equals(vpwdCipher)){
//			System.out.println("两次密码不一致...");
//		}
//		String payPwd = request.getParameter("payPwd");
//		String payPwdCipher = request.getParameter("payPwdCipher");
//		if(!payPwd.equals(payPwdCipher)){
//			System.out.println("两次密码不一致...");
//		}
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH：mm：ss：SSS");
//		String vdate = sdf.toString() ;
//		String vbalance = "8888";
//		
//		User user = new User(vpwd,payPwd,vaccount,vname,vcard,vdate,vbalance);
//		UserService userService = new UserService();
//		
//		boolean result = userService.AddUser(user);
//		if(!result){
//			System.out.println("增加失败");
//		}else{
//			System.out.println("增加成功！");
//		}
		request.getRequestDispatcher("reg_personal_b.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
