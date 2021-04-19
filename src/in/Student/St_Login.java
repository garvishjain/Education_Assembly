package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
 * Servlet implementation class St_Login
 */
@WebServlet("/St_Login")
public class St_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private String hashing;
	private Statement stmt;
	private RequestDispatcher rd;

	private String getHash(byte[] passbyte, String algo) {
		try {
			MessageDigest msgdigest = MessageDigest.getInstance(algo);
			msgdigest.update(passbyte);
			byte[] passdigest = msgdigest.digest();
			hashing = DatatypeConverter.printHexBinary(passdigest).toLowerCase();

		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return hashing;
	}

	public void init(ServletConfig config) throws ServletException {
		try {
			Context cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			con = ds.getConnection();
			stmt = con.createStatement();

		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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
						byte[] bytepass = pass.getBytes();
						String Hashed = getHash(bytepass, "SHA-256");
							
						
						String sql = "Select username,password from student_information where username =' " + uname + " ' and password= '"+ Hashed + "' LIMIT 1";
						
						ResultSet rs = stmt.executeQuery(sql);
						String u = rs.getString(1);
						String p = rs.getString(2);
						System.out.println(uname+"\n"+Hashed+"\n\n\n"+u+"\n"+p);
						if (rs.next()) 
								{
									String password = rs.getString(2);
									if (pass.equals(password))
											{
										out.println("<html><body><script>alert('Data  Submitted');</script></body></html>");
											}
									else
											{
										out.println("<html><body><script>alert('Data Not Submitted');</script></body></html>");
											}
									} 
						else
								{
							out.println("<html><body><script>alert('Data Not Submitted');</script></body></html>");
								}
			} 
	catch (Exception e) {
				// TODO: handle exception
			}
		
		
	}
}
