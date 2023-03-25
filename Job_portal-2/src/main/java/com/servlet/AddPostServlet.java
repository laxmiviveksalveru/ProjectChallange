package com.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;
@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String title=req.getParameter("title");
			String location=req.getParameter("location");
			String category=req.getParameter("category");
			String status=req.getParameter("status");
			String desc=req.getParameter("desc");
			
			Jobs j=new Jobs();
			j.setTitle(title);
			j.setDescription(desc);
			j.setCategory(category);
			j.setLocation(location);
			j.setStatus(status);
			HttpSession session=req.getSession();
			
			JobDAO dao=new JobDAO(DBConnect.getConn());
		boolean f=dao.addJobs(j);
		if(f) 
		{
			session.setAttribute("succMsg","places posted sucessfully... mawa bro party ");
			resp.sendRedirect("add_job.jsp");
			
		}
		else {
			
			
			session.setAttribute("succMsg"," mawa bro error  ");
			resp.sendRedirect("add_job.jsp");
			
		}
			
			
			
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	

	
}
