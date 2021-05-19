package in.College;

import java.io.IOException;
import java.io.PrintWriter;
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

import in.common.GetConnection;

/**
 * Servlet implementation class collegedepartment
 */
@WebServlet("/collegedepartment")
public class collegedepartment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	
	private int c_id,isActive = 0;
	
	
	
	public void init(ServletConfig config) throws ServletException 
	{
    GetConnection getConObj=new GetConnection();
    con=getConObj.getCon();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String collegename = request.getParameter("collname") != null ? request.getParameter("collname") : "";
			int  department = Integer.parseInt(request.getParameter("department")!= null ? request.getParameter("department") : "");
			String headname = request.getParameter("headname") != null ? request.getParameter("headname") : "";
			/*String uname = request.getParameter("uname") != null ? request.getParameter("uname") : "";*/
			String phone = request.getParameter("phonenum") != null ? request.getParameter("phonenum") : "";
			String email = request.getParameter("email") != null ? request.getParameter("email") : "";
			int  stdcapacity = Integer.parseInt(request.getParameter("stdCapacity") != null ? request.getParameter("stdCapacity") : "");
			int seat = Integer.parseInt(request.getParameter("seat") != null ? request.getParameter("seat") : "");
			
			System.out.println(collegename);
			System.out.println(department);
			System.out.println(headname);
			System.out.println(phone);
			System.out.println(email);
			System.out.println(stdcapacity);
			System.out.println(seat);
			
			// <--- foreign key convert start --->
			String sqll = "select pk_id from college_registration where college_name='"+collegename+"'  ";
			
			System.out.println(sqll);
			stmt = con.prepareStatement(sqll);
			ResultSet rs = stmt.executeQuery(sqll);
			if (rs.next()) {
				c_id = rs.getInt("pk_id");
			} else {

				out.println("<body><html><script>alert('No college id  Data Found');</script></html></body>");
			}
			
			
//			String sql2="Select pk_id from department_name where Details='"+department+"'";
//			System.out.println(sql2);
//			stmt= con.prepareStatement(sql2);
//			ResultSet rs6 = stmt.executeQuery();
//			if(rs6.next())
//			{
//				detail = rs6.getString(1);
//			}else {
//
//				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
//			}
			// <--- foreign key convert end --->

			// <--- department data start--->
				
			
			String sql = "insert into college_department(fk_college_id,fk_department_id,hod_name,phone_no,email,std_capacity,isActive,seat_available)value(?,?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, c_id);
			stmt.setInt(2, department);
			stmt.setString(3, headname);
			stmt.setString(4, phone);
			stmt.setString(5, email);
			stmt.setInt(6, stdcapacity);
			stmt.setInt(7, isActive);
			stmt.setInt(8, seat);

			int res = stmt.executeUpdate();

			if (res > 0) {

				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/college-department.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			} else {

				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/college-department.jsp");
				out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
			}
			// <--- department data end--->
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
