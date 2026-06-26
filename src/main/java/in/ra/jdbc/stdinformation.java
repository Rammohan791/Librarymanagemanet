package in.ra.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.Session;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/showinfo")
public class stdinformation extends HttpServlet {

	 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			PrintWriter out=resp.getWriter();		
			String library_id=req.getParameter("library_id");	
			String book_id =req.getParameter("bookid");
			 HttpSession session=req.getSession();
		 try {
				
	        	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookinformation","root","rammohan@123");		
	        	PreparedStatement ps=con.prepareStatement("select * from book where library_id=? and book_id=?");
				    ps.setString(1, library_id);
				    ps.setString(2,book_id);
				    ResultSet rs=ps.executeQuery();
		            if (rs.next()) {
		            	String name=rs.getString("fname");
                    	String roll=rs.getString("rollnumber");
		            	String sdate=rs.getString("startdate");
		            	String edate=rs.getString("enddate");
                    	String bookid=rs.getString("book_id");
		            	HttpSession session1=req.getSession();
		            	session1.setAttribute("name1", name);
		            	session1.setAttribute("rollno", roll);
		            	session1.setAttribute("startdate1", sdate);
		            	session1.setAttribute("enddate1", edate);
		            	session1.setAttribute("bookid1", bookid);
		            	resp.setContentType("text/html");
		            	out.println("<h1 value='${name}'>heloo</h1>");
		            	System.out.println(name);
                        session1.setAttribute("name","ram");
						RequestDispatcher rd=req.getRequestDispatcher("stdinformation.jsp");
						rd.include(req, resp);
					} else {
						resp.setContentType("text/html");
						out.println("<h1>No record found with these ID! or rollnumber</h1>");
						RequestDispatcher rd=req.getRequestDispatcher("stdinformation.jsp");
						rd.include(req, resp);
					}
			} catch (Exception e) {
				e.printStackTrace();
				resp.setContentType("text/html");
				out.println("<h1>wrong library_id</h1>");
				RequestDispatcher rd=req.getRequestDispatcher("submit_book.jsp");
				rd.include(req, resp);
			}
	}
}
