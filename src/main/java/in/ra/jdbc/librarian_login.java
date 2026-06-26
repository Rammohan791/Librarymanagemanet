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
@WebServlet("/librarian")
public class librarian_login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		String name=req.getParameter("username");
		String college_id=req.getParameter("college_id");
		String collegepass=req.getParameter("password");
		String collegename=req.getParameter("college_name");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = System.getenv("mysql://root:mkDUllBwyxZCEtYTBTTgKNNIDfGEKPbt@mysql.railway.internal:3306/railway"); 
            String user = System.getenv("root");
            String password = System.getenv("mkDUllBwyxZCEtYTBTTgKNNIDfGEKPbt");
            
            //  Connection establish karna
            con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps=con.prepareStatement("insert into librarian values(?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, college_id);
			ps.setString(3, collegepass);
			ps.setString(4, collegename);
			int rs=ps.executeUpdate();
			if(rs>0) {
				resp.setContentType("text/html");
				out.println("<h1>WelCome</h1>");
				RequestDispatcher rd=req.getRequestDispatcher("LibrarianLogin.jsp");
				rd.include(req, resp);
			}
			else {
				resp.setContentType("text/html");
				out.println("<h1>Welcome YOU! unsuccesful!</h1>");
				RequestDispatcher rd=req.getRequestDispatcher("LibrarianLogin.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			resp.setContentType("text/html");
			out.println("<h1>Welcome YOU! catch block unsuccesful!</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("LibrarianLogin.jsp");
			rd.include(req, resp);
		}
	}

}
