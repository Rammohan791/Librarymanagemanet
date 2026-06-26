package in.ra.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/addbook")
public class add_book extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String book_name=req.getParameter("name");
		String book_id=req.getParameter("Book_id");
		PrintWriter out=resp.getWriter();
		try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","rammohan@123");
			   PreparedStatement ps=con.prepareStatement("insert into books values(?,?)");
			   ps.setString(1, book_name);
			   ps.setString(2, book_id);
			   int rs=ps.executeUpdate();
			   if(rs>0) {
				   resp.setContentType("html/css");
				   RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
				   rd.include(req, resp);
			   }
			   else {
				   resp.setContentType("html/css");
				   out.print("Something Wrong");
				   RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
				   rd.include(req, resp);
				   
			   }
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	}

}
