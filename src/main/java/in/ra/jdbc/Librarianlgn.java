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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/librarianlgn")
public class Librarianlgn extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session=req.getSession();
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("tempname");
		String college_id=req.getParameter("college_id");
		String collegepass=req.getParameter("collegepass");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/librarian","root","rammohan@123");
			PreparedStatement ps=con.prepareStatement("select * from librarian where college_id=? and collegepass=?");
			ps.setString(1, college_id);
			ps.setString(2, collegepass);
			  ResultSet rs=ps.executeQuery();
			 if (rs.next()) {
					Cookie c=new Cookie("user_status", "loggedIn");
					resp.addCookie(c);			
//                 c.setMaxAge(30 * 60);
				 String name1=rs.getString("name");
				 System.out.print(name1);
				RequestDispatcher r=req.getRequestDispatcher("welcome.jsp");
			   session.setAttribute("name1",name1);
				r.forward(req, resp);
				} 
			 else {
				resp.setContentType("text/html");
				out.print("<script> alert('You are wrong!'+name)</script>");
				RequestDispatcher r=req.getRequestDispatcher("index.jsp");
				r.include(req, resp);				
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<h1>Welcome YOU! catch block unsuccesful!</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("Librarianlgn.jsp");
			rd.include(req, resp);
		}
	}
}
