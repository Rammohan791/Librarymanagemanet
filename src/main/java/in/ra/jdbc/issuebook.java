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
@WebServlet("/issuebook")
public class issuebook extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String rollno=req.getParameter("rollno");
         String library_id=req.getParameter("libraryid");
        String startdate=req.getParameter("current_date");
         String enddate=req.getParameter("end_date");
         String book_id=req.getParameter("book_id");
         PrintWriter out=resp.getWriter();
         String fname="";
         try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookinformation","root","rammohan@123");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookinformation","root","rammohan@123");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","rammohan@123");
			PreparedStatement ps=con.prepareStatement("select * from students where rollno=? and library_id=?");
		    ps.setString(1,rollno);
		    ps.setString(2, library_id);
		    ResultSet rs=ps.executeQuery();
		    if (rs.next()) {
				resp.setContentType("text/html");
			  fname=rs.getString("fname");
			  
				PreparedStatement psss=connn.prepareStatement("select * from book where library_id=? and book_id=?");
  			    psss.setString(1, library_id);
  			    psss.setString(2, book_id);
  			    ResultSet rss=psss.executeQuery();
  	            if (rss.next()) {
  					resp.setContentType("text/html");
  					out.println("<h1>YOU HAVE ALREADY ISSUE THIS BOOK!</h1>");
  					RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
  					rd.include(req, resp);
  				} else {

                  try {
                	  PreparedStatement books=conn.prepareStatement("select count(*) from book");
      				PreparedStatement pss=conn.prepareStatement("insert into book values(?,?,?,?,?,?)");
      			    pss.setString(1, fname);
      				pss.setString(2,rollno);
      			    pss.setString(3, library_id);
      			    pss.setString(4,startdate);
      			    pss.setString(5, enddate);
      			    pss.setString(6, book_id);
      	            int n=pss.executeUpdate();
      	            if (n>0) {
      					resp.setContentType("text/html");
      					out.println("<h1>WELCOMEGGGGGGGGGGGGGGG1111111111</h1>"+books);
      					RequestDispatcher rdd=req.getRequestDispatcher("welcome.jsp");
      					rdd.include(req, resp);
      				} else {
      					resp.setContentType("text/html");
      					out.println("<h1>THIS BOOK ALREADY EXIST2222222222</h1>");
      					RequestDispatcher rdd=req.getRequestDispatcher("welcome.jsp");
      					rdd.include(req, resp);
      				}
				} catch (Exception e) {
					e.printStackTrace();
					resp.setContentType("text/html");
					out.print("<h1>BOOK ALREADY EXIST</h1>");
					RequestDispatcher r=req.getRequestDispatcher("welcome.jsp");
					r.include(req, resp);			
				}
  				}
			} else {
				resp.setContentType("text/html");
				out.print("<h1> LIBRARY ID OR ROLL NUMBER WRONG!</h1>");
				RequestDispatcher r=req.getRequestDispatcher("welcome.jsp");
				r.include(req, resp);				
			}
						
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<h1>wrong id,pass and book already exist</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
			rd.include(req, resp);
		}
	}

}
