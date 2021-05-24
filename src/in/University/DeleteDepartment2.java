package in.University;

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
 * Servlet implementation class DeleteDepartment2
 */
@WebServlet("/DeleteDepartment2")
public class DeleteDepartment2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
			GetConnection getcon = new GetConnection();
			con = getcon.getCon();
	}
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			int uid =Integer.parseInt( request.getParameter("uid")!=null ? request.getParameter("uid") : "");
		String delete="update university_department set isActive='1' where pk_id=?";
		stmt = con.prepareStatement(delete);
		
		stmt.setInt(1,uid);
		int res4 = stmt.executeUpdate();
		if (res4 > 0) {

			request.setAttribute("status", "succesfull delete");
			response.sendRedirect("university/department.jsp");
			out.println("<body><html><script>alert('Data delete');</script></html></body>");
		} else {

			request.setAttribute("status", "Failed to sign up...! please try again");
			response.sendRedirect("university/department.jsp");
			out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
