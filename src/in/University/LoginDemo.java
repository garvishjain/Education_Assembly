package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import in.common.GetConnection;

/**
 * Servlet implementation class LoginDemo
 */
@WebServlet("/LoginDemo")
public class LoginDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private String hashing;
	private PreparedStatement pstmt;
	
	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		GetConnection getConnection = new GetConnection();
		con = getConnection.getCon();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("type/html");
		PrintWriter out = response.getWriter();
		try {
			String aname = request.getParameter("aname");
			String pass = request.getParameter("pass");
			
			byte[] bytepass = pass.getBytes();
			String Hashed = getHash(bytepass, "SHA-256");
			
			String sql = "Select * from admin_register where username ='" + aname + "' and password= '"
					+ pass + "'LIMIT 1";
			
			pstmt = con.prepareStatement(sql);
			
			ResultSet rs= pstmt.executeQuery();
			
			if (rs.next()) {
				String password = rs.getString(2);
				if (pass.equals(password)) {
					request.setAttribute("status", "succesfull login");
					response.sendRedirect("university/university-manager.jsp");
					//rd.forward(request, response);
				} else {
					System.out.println("direct");
					request.setAttribute("status", "Failed to sign up...! please try again");
					response.sendRedirect("university/loginDemo.jsp");
					//rd.forward(request, response);
				}
			} else {
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/loginDemo.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
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

}
