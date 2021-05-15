package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
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


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
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
			GetConnection gc = new GetConnection();
			 con= gc.getCon();
			 stmt = con.createStatement();

		} 
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
			try {
				String uname = request.getParameter("uname");
				String pass = request.getParameter("pass");

				byte[] bytepass = pass.getBytes();
				String Hashed = getHash(bytepass, "SHA-256");

				String sql = "Select * from university_register where username ='" + uname + "' and password= '"
						+ Hashed + "' LIMIT 1";

				ResultSet rs = stmt.executeQuery(sql);

				if (rs.next()) 
				{
						response.sendRedirect("university/set_session.jsp?status=true&uid="+rs.getInt(1));
				} 
				else 
				{
					out.print("<script>alert('Invalid Username/Password!!!')</script>");
					response.sendRedirect("university/login.jsp");
					
				}
			} 
			catch (Exception e) 
			{
				System.out.println(e);
			}
			
			
		}
}

