package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import in.common.GetConnection;
import in.common.hashed;

/**
 * Servlet implementation class collegelogin
 */
@WebServlet("/collegelogin")
public class collegelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private  Connection con;
	private PreparedStatement stmt;
	private RequestDispatcher rd;

	
	
	public void init(ServletConfig config) throws ServletException 
	{
    GetConnection getConObj=new GetConnection();
     con = getConObj.getCon();
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		try
		{
			
		
		String uname = request.getParameter("user")!= null ? request.getParameter("user") : "";
		String pass = request.getParameter("pass")!= null ? request.getParameter("pass") : "";
			
		hashed hash = new hashed();
		String Hashed = hash.getHash(pass);
			String sql = "Select * from user where username ='"+uname+"' and password = '"+Hashed+"' LIMIT 1";
			stmt = con.prepareStatement(sql);
		
	   
		
		
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next())
			
		{
			out.println("data  found");
					
				}
		else
		{
			out.println("data not found");
			}
		
		
		
		}catch (SQLException e) 
		{
			e.printStackTrace();
		} 

		
	}

}
