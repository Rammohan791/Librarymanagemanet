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
@WebServlet("/stdlogin")
public class studentlogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		String rollno=req.getParameter("rollno");
		String library_id=req.getParameter("libraryid");
//		RequestDispatcher rd=req.getRequestDispatcher("addstudent.jsp");
//		rd.forward(req, resp);
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
	        String url = System.getenv("mysql://root:mkDUllBwyxZCEtYTBTTgKNNIDfGEKPbt@mysql.railway.internal:3306/railway"); 
            String user = System.getenv("root");
            String password = System.getenv("mkDUllBwyxZCEtYTBTTgKNNIDfGEKPbt");
            
            //  Connection establish karna
            con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps=con.prepareStatement("select * from students where rollno=? and library_id=?");
		    ps.setString(1,rollno);
		    ps.setString(2, library_id);
		    ResultSet rs=ps.executeQuery();
		    if (rs.next()) {
		    	Cookie c=new Cookie("rollno", "library_id");
		    	resp.addCookie(c);
				RequestDispatcher r=req.getRequestDispatcher("stdinformation.jsp");
				r.forward(req, resp);
			} else {
				resp.setContentType("text/html");
				out.print("<h1>SOMETHING WRONG!</h1>");
				RequestDispatcher r=req.getRequestDispatcher("index.jsp");
				r.include(req, resp);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
