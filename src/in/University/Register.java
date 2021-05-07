package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.xml.bind.DatatypeConverter;


@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private String hashing;
	private PreparedStatement stmt;
	private RequestDispatcher rd;
	

	private String getHash(byte[] passbyte,String algo) 
	{
		try 
			{
				MessageDigest msgdigest = MessageDigest.getInstance(algo);
				msgdigest.update(passbyte);
				byte[] passdigest = msgdigest.digest();
				hashing = DatatypeConverter.printHexBinary(passdigest).toLowerCase();
			}
		catch (NoSuchAlgorithmException e) 
			{
				e.printStackTrace();
			}
		return hashing;
	}

	
	public void init(ServletConfig config) throws ServletException 
	{
		try 
			{
				Context cxt = new InitialContext();
				DataSource ds =(DataSource) cxt.lookup("java:comp/env/myCon");
				con = ds.getConnection();
			} 
		catch (NamingException e) 
			{
				e.printStackTrace();
			} 
		catch (SQLException e) 
			{
				e.printStackTrace();
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			try 
				{
				String fname = request.getParameter("fname") !=null ? request.getParameter("fname") : "";
				String lname = request.getParameter("lname")!=null ? request.getParameter("lname") : "";
				String uname = request.getParameter("uname")!=null ? request.getParameter("uname") : "";
				String email = request.getParameter("email")!=null ? request.getParameter("email") : "";
				String pass = request.getParameter("pass")!=null ? request.getParameter("pass") : "123";
				byte[] passbyte = pass.getBytes();
				String Hashed= getHash(passbyte,"SHA-256");
				
				
				String sql="insert into university_register(fname,lname,username,email,password)value(?,?,?,?,?)";
				
				stmt = con.prepareStatement(sql);
				stmt.setString(1,fname);
				stmt.setString(2,lname);
				stmt.setString(3,uname);
				stmt.setString(4,email);
				stmt.setString(5,Hashed);
				
				int res = stmt.executeUpdate();
					if(res>0)
					{
						request.setAttribute("status","Successfully Registered");
						response.sendRedirect("university/login.jsp");
					}
					else
					{
						request.setAttribute("status", "Failed to sign up...! please try again");
						response.sendRedirect("university/register.jsp");
						}
				
				}
			catch (SQLException e) 
				{
					e.printStackTrace();
				}
			
		}


	

}
