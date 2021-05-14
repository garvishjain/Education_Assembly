package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.common.GetConnection;
import in.common.hashed;

/**
 * Servlet implementation class St_Login
 */
@WebServlet("/St_Login")
public class St_Login extends HttpServlet {
	
	HttpServletResponse res;
	
	private String username;
	
	public String getUsername() {
		System.out.println("get = "+username);
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	private static final long serialVersionUID = 1L;
	private Connection con;
	private String hashing;
	private String n;
	private String p;
	private String user;

	private Statement stmt;
	


	public void init(ServletConfig config) throws ServletException 
	{
		
		 try {
					GetConnection getCon = new GetConnection();
				    con = getCon.getCon();
				   stmt = con.createStatement();
		 		} 
		 catch (SQLException e) 
				 {
					e.printStackTrace();
				}
				
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
						response.setContentType("text/html");
						PrintWriter out = response.getWriter();
						try {
						String uname = request.getParameter("uname");
						String pass = request.getParameter("pass");
						/*password hashing*/
						hashed gethash = new hashed();
						String hashed = gethash.getHash(pass);
						String sql = "Select * from user where username ='" + uname + "' and password= '"+ hashed + "' LIMIT 1"; 
						
						ResultSet rs = stmt.executeQuery(sql);
								if (rs.next()) 
								{
									
									String id = gethash.getHash(String.valueOf(rs.getInt(1)));
									response.sendRedirect("student/home.jsp?sid="+id+"&status="+gethash.getHash("trueCBC"));
							    
								} 
							else
									{
								out.println("<html><body><script>alert('Not ');</script></body></html>");
									}
						} 
						catch (SQLException e)
						{
							e.printStackTrace();
						}
						
						finally
						{
							try {
								con.close();
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						}
}
	
		
}
	