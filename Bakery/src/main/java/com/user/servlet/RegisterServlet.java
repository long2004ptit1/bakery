package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOIpml;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet { //ke thua de lay doPost 
	//source->override->doPost
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				String name = req.getParameter("name");
				String email = req.getParameter("email");
				String phno = req.getParameter("phno");
				String password = req.getParameter("password");
				String checkBox = req.getParameter("checkBox");
				// System.out.println(name+" "+email+" "+phno+" "+password+" "+checkBox+" ");
				User us = new User();
				us.setName(name);
				us.setEmail(email);
				us.setPhno(phno);
				us.setPassword(password);

				HttpSession session = req.getSession();
				UserDAOIpml dao = new UserDAOIpml(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (checkBox != null) {
					if (f) {
						// System.out.println("User Register Success...");
						session.setAttribute("succMsg", "Registration successfully...");
						resp.sendRedirect("register.jsp");
					} else {
						// System.out.println("Something wrong on server...");
						session.setAttribute("failMsg", "Something wrong on server...");
						resp.sendRedirect("register.jsp");
					}

				} else {
					session.setAttribute("failMsg", "Please Check Agree and condition");
					resp.sendRedirect("register.jsp");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
