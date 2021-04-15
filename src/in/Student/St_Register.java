package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

/**
 * Servlet implementation class St_Register
 */
@WebServlet("/St_Register")
public class St_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	private RequestDispatcher rd;
	private String hashing;
	private String hashed;
	private int res1;
	
	
	
	
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
					DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
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
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			
			try {  
						String fname = request.getParameter("fname");
						String lname = request.getParameter("lname");
						String uname=request.getParameter("uname");
						String email=request.getParameter("email");
						String num = request.getParameter("num");
						String dob = request.getParameter("dob");
						String gender=request.getParameter("gender");
					
						String adrs=request.getParameter("address");
						String state = request.getParameter("state");
						String city= request.getParameter("city");
						String pincode=request.getParameter("pincode");
						
						String course=request.getParameter("course");
						
					String pass=request.getParameter("pass");
					byte[] passbyte = pass.getBytes();
					hashed = getHash(passbyte,"SHA-256");
					
					String sql1="insert into student_address(address,state,city,pincode)values(?,?,?,?)";
					stmt = con.prepareStatement(sql1);
					stmt.setString(1, adrs);
					stmt.setString(2, state);
					stmt.setString(3, city);
					stmt.setString(4, pincode);
					
					int res= stmt.executeUpdate();
					if (res>0)
					{
						String s = "SELECT pk_id FROM student_address ORDER BY pk_id  DESC Limit 1" ;
						stmt = con.prepareStatement(s);
						ResultSet rs = stmt.executeQuery();
						int fk_address = 0;
						if(rs.next())
						{
							 fk_address=rs.getInt(1);
						}
						String sql="insert into st_register(fname,lname,username,email,gender,contact,dob,password,fk_address)values(?,?,?,?,?,?,?,?,?)";
						stmt = con.prepareStatement(sql);
						stmt.setString(1, fname);
						stmt.setString(2, lname);
						stmt.setString(3, uname);
						stmt.setString(4, email);
						stmt.setString(5, gender);
						stmt.setString(6, num);
						stmt.setString(7, dob);
						stmt.setString(8, hashed);
						stmt.setInt(9, fk_address);
						res1 = stmt.executeUpdate();
					}
					
					if(res>0&&res1>0)
					{
						
						request.setAttribute("status","Successfull Registered");
						rd = request.getRequestDispatcher("student/home.jsp");
						rd.forward(request, response);
					}
					else
					{
						request.setAttribute("status","Failed to sign up...! please try again");
						rd = request.getRequestDispatcher("student/register.jsp");
						rd.forward(request, response);		
						
					}
				}	
			catch (SQLException e) 
				{
					e.printStackTrace();
				}
			  
			  
			  
	
		}
}