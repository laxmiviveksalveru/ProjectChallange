package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.PlaceDAO;

import com.entity.Place;

import com.mysql.cj.Session;
@WebServlet("/vh")

public class PlaceServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 try {
		String name = req.getParameter("name");
		
		String email = req.getParameter("email");
		String placex = req.getParameter("placex");
		String price= req.getParameter("price");
		PlaceDAO dao = new PlaceDAO(com.DB.DBConnect.getConn());
		 Place p = new Place(name,email,placex,price);
		 boolean r = dao.addPlace(p);
		 HttpSession session = req.getSession();
		 if(r) {
			 session.setAttribute("succMsg","Register sucessfully");
			 resp.sendRedirect("placeb.jsp");
			 
			 
		 }
		 else {
			 session.setAttribute("succMsg", "Something went wrong");
			 resp.sendRedirect("placeb.jsp");
			 
			 
			 
		 }
		 
		 
		 
		 
		 
		 
		 
		 
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
		
		
		
	}
	
	
	

}


