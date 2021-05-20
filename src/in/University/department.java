package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Set;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/department")
public class department extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	private String detail;
	

	public void init(ServletConfig config) throws ServletException {
		try {
			InitialContext cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			con = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String department = request.getParameter("department") != null ? request.getParameter("department") : "";
			String headname = request.getParameter("headname") != null ? request.getParameter("headname") : "";
			/*String uname = request.getParameter("uname") != null ? request.getParameter("uname") : "";*/
			String phone = request.getParameter("phone") != null ? request.getParameter("phone") : "";
			String email = request.getParameter("email") != null ? request.getParameter("email") : "";
			String stdcapacity = request.getParameter("stdCapacity") != null ? request.getParameter("stdCapacity") : "";
			int u_id = 123;
			int dpartment = 12345;
			// <--- foreign key convert start --->
			String sqll = "select pk_id from university  ";
			System.out.println(sqll);
			stmt = con.prepareStatement(sqll);
			ResultSet rs = stmt.executeQuery(sqll);
			if (rs.next()) {
				u_id = rs.getInt(1);
			} else {

				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			
			String sql2="Select pk_id from department_name where Details='"+department+"'";
			System.out.println(sql2);
			stmt= con.prepareStatement(sql2);
			ResultSet rs6 = stmt.executeQuery();
			if(rs6.next())
			{
				detail = rs6.getString(1);
			}else {

				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			// <--- foreign key convert end --->

			// <--- department data start--->
				
			
			String sql = "insert into university_department(fk_university_id,fk_department_id,hod_name,phone_no,email,std_capacity)value(?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, u_id);
			stmt.setString(2, detail);
			stmt.setString(3, headname);
			stmt.setString(4, phone);
			stmt.setString(5, email);
			stmt.setString(6, stdcapacity);

			int res = stmt.executeUpdate();

			if (res > 0) {

				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/department.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			} else {

				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/department.jsp");
				out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
			}
			// <--- department data end--->
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
