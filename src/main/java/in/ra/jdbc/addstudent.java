package in.ra.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/submit")
public class addstudent extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	PrintWriter out=resp.getWriter();
	String fname=req.getParameter("fname");
	String lname=req.getParameter("lname");
	String mobno=req.getParameter("mobno");
	String rollno=req.getParameter("rollno");
	String library_id=req.getParameter("libraryid");

	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","rammohan@123");
		PreparedStatement ps=con.prepareStatement("insert into students values(?,?,?,?,?)");
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,mobno);
		ps.setString(4, rollno);
		ps.setString(5, library_id);
		int rs=ps.executeUpdate();
		if(rs>0) {
			resp.setContentType("text/html");
			out.println("<script>alert('SuccessFull Add Student!')</script>");
			RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
			rd.include(req, resp);
		}
		else {
			resp.setContentType("text/html");
			out.println("<script>alert('SomeThing Wrong')</script>");
			RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
			rd.include(req, resp);
		}
	}catch(Exception e) {
		e.printStackTrace();
		resp.setContentType("text/html");
		out.println("<script>alert('Sorry SomeThing Duplicate!')</script>");
		RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
		rd.include(req, resp);
	}
	}

}
