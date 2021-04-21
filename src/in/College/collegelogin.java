package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.common.GetConnection;

/**
 * Servlet implementation class collegelogin
 */
@WebServlet("/collegelogin")
public class collegelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	
	public void init(ServletConfig config) throws ServletException 
	{
    GetConnection getConObj=new GetConnection();
    con=getConObj.getCon();
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String uname = request.getParameter("uname")!= null ? request.getParameter("uname") : "";
		String pass = request.getParameter("pass")!= null ? request.getParameter("uname") : "";
		
		
		
	}

}
