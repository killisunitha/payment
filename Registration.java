

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Connection con=Dbcon1.getcon();
			PrintWriter pw=response.getWriter();
			String fname=request.getParameter("fullname");
			String emailid=request.getParameter("email");
			String uname=request.getParameter("username");
			String password=request.getParameter("password");
	
			
			String query="insert into  userdetails(fullname,email,username,password) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,fname);
			ps.setString(2,emailid);
			ps.setString(3,uname);
			ps.setString(4,password);
			int a=ps.executeUpdate();
			if(a>0) {
				pw.print("insertion done");
				response.sendRedirect("welcome.jsp");
			}
			else
			{
				pw.print("insertion not done");
			}
			
			
			
		}
		catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	}


