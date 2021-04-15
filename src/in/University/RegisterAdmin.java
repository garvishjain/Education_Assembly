package in.University;

import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.xml.bind.DatatypeConverter;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode;


/**
 * Servlet implementation class RegisterAdmin
 */
@WebServlet("/RegisterAdmin")
public class RegisterAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private static String hashedpassword;
	private String sql;
	private java.sql.PreparedStatement stmt;
	
	/*declared Variable*/	
	private String fname;
	private String lname;
	private String uname;
	private String email;
	private String pass;
	
	/*Generate Getter & Setter*/
	
	private String getFname() 
		{
			return fname;
		}
	private void setFname(String fname) 
		{
			this.fname = fname;
		}

	

	private String getLname() 
		{
			return lname;
		}
	private void setLname(String lname) 
		{
			this.lname = lname;
		}


	
	private String getUname() 
		{
			return uname;
		}
	private void setUname(String uname) 
		{
			this.uname = uname;
		}



	private String getEmail() 
		{
			return email;
		}
	private void setEmail(String email) 
		{
			this.email = email;
		}
	
	
	public String getPass() 
		{
			return pass;
		}
	public void setPass(String pass) 
		{
			this.pass = pass;
		}
	
	public boolean getData(String fname,String lname,String uname,String email,String pass)
	{
		this.setFname(fname);
		this.setLname(lname);
		this.setUname(uname);
		this.setEmail(email);
		byte[] passbyte = pass.getBytes();
		this.setPass(getHash(passbyte,"SHA-256"));
		
		return getMethod();
	}
	
	//Database Connection
	public void init(ServletConfig config) throws ServletException 
		{
			try 
				{
					Context cxt =new InitialContext();
					DataSource ds = (DataSource)cxt.lookup("java:comp/env/myCon");
					con = ds.getConnection();
					//stmt = con.createStatement();
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
	


	//method of hashing password
	private static String getHash(byte[] passbyte, String algo) 
	{
		try 
			{
				MessageDigest msg = MessageDigest.getInstance(algo);
				msg.update(passbyte);
				byte[] passdigest = msg.digest();
				hashedpassword = DatatypeConverter.printHexBinary(passdigest).toLowerCase();
			}
		catch (NoSuchAlgorithmException e) 
			{
				e.printStackTrace();
			}
		return hashedpassword;
	}
	
	
	
	
	/*Method*/
	private boolean getMethod()
		{
			
				/*byte[] passbyte = getPass().getBytes();
				String hashed = getHash(passbyte,"SHA-256");*/
				
				
				try
				{
				sql = "insert into register(fname,lname,username,email,password) values(?,?,?,?,?)";
				stmt = con.prepareStatement(sql);
				
				stmt.setString(1,this.getFname());
				stmt.setString(2,this.getLname());
				stmt.setString(3,this.getUname());
				stmt.setString(4,this.getEmail());
				stmt.setString(5,this.getPass());
				
				int res = stmt.executeUpdate();
				
				if(res==0)
				{
					return false;				
				}
					return true;
				
				}
				
				
				
				catch (SQLException e) 
					{				
						e.printStackTrace();
						return false;
					}
				

		}
}
