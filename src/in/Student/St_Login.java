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
    private String regnum;
	private Statement stmt;
	private ResultSet rs;


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
						
						 rs = stmt.executeQuery(sql);
								if (rs.next()) 
								{
									 regnum = rs.getString(6);
									
									
									 
								}
							else
									{
								out.println("<html><body><script>alert('Not ');</script></body></html>");
									}
								String prefix = regnum.substring(0, 3);
								
								if(prefix.equals("col"))
								{
									
									String sql1 = "Select * from college_registration where registration_number ='" + regnum + "'  LIMIT 1"; 
									 rs = stmt.executeQuery(sql1);
									 if (rs.next()) 
										{
										    String id = gethash.getHash(String.valueOf(rs.getInt(1)));
										    String cname = "college_registration";
											response.sendRedirect("student/home.jsp?sid="+id+"&cname="+cname+"&status="+gethash.getHash("trueCBC"));
									    
										} 
									else
											{
									
										out.println("<html><body><script>alert('comingnot ');</script></body></html>");
											}
																				
								}
								else if(prefix.equals("UNI"))
								{
									String sql1 = "Select * from university where u_registration ='" + regnum + "'  LIMIT 1"; 
									 rs = stmt.executeQuery(sql1);
									 if (rs.next()) 
										{
										    String id = gethash.getHash(String.valueOf(rs.getInt(1)));
										    String cname = "university";
											response.sendRedirect("student/home.jsp?sid="+id+"&cname="+cname+"&status="+gethash.getHash("trueCBC"));
									    
										} 
									else
											{
										out.println("<html><body><script>alert('Not ');</script></body></html>");
											}
																				
								}
								else 
								{
									String sql2 = "Select * from student_information where aadhar_number ='" + regnum + "'  LIMIT 1"; 
									 rs = stmt.executeQuery(sql2);
									 if (rs.next()) 
										{
										    String id = gethash.getHash(String.valueOf(rs.getInt(1)));
										    String cname = "student_information";
											response.sendRedirect("student/home.jsp?sid="+id+"&cname="+cname+"&status="+gethash.getHash("trueCBC"));
									    
										} 
									else
											{
										out.println("<html><body><script>alert('Not ');</script></body></html>");
											}
																				
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
	