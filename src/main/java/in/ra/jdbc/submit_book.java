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
@WebServlet("/submitbook")
public class submit_book extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();		
		String library_id=req.getParameter("library_id");	
		String book_id=req.getParameter("book_id");
        try {
			
        	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookinformation","root","rammohan@123");		
        	PreparedStatement psss=connn.prepareStatement("delete from book where library_id=? and book_id=?");
			    psss.setString(1, library_id);
			    psss.setString(2, book_id);
			    int rss=psss.executeUpdate();
	            if (rss>0) {
					resp.setContentType("text/html");
					out.println("<script>alert('SuccessFull Book Submission!')</script>");
					RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
					rd.include(req, resp);
				} else {
					resp.setContentType("text/html");
					out.println("<script>alert('No Record Found')</script>");
					RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
					rd.include(req, resp);
				}
				

		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<script>alert('ggghghggjhjhj')</script>");
			RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
			rd.include(req, resp);
		}
}
	}

