package in.College;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import in.common.GetConnection;
import in.common.date;
import in.common.img;

/**
 * Servlet implementation class collegeprofessor
 */
@WebServlet("/collegeprofessor")
@MultipartConfig
public class collegeprofessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	private int pk_college_id,pk_department_id;
	
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
		try 
		{
		    String cname =request.getParameter("cname")!= null ? request.getParameter("cname") : "";
			String fname = request.getParameter("fname")!= null ? request.getParameter("fname") : "";
			String lname = request.getParameter("lname")!= null ? request.getParameter("lname") : "";
			String dob = request.getParameter("dob")!= null ? request.getParameter("dob") : "";
			String gender = request.getParameter("gender")!= null ? request.getParameter("gender") : "";
			String department = request.getParameter("department")!= null ? request.getParameter("department") : "";
			String position = request.getParameter("position")!= null ? request.getParameter("position") : "";
			String phone = request.getParameter("phone")!= null ? request.getParameter("phone") : "";
			String email = request.getParameter("email")!= null ? request.getParameter("email") : "";
			String bio = request.getParameter("bio")!= null ? request.getParameter("bio") : "";
			Part file = request.getPart("image");
			
			date dt=new date();
			String date =dt.Date(dob);
			
			String filename = file.getSubmittedFileName();
			img image=new img();
			String pdfname = image.image(filename, file);
			
			String sql="select pk_id from college_registration where college_name ='"+cname+"' ";
			System.out.println(sql);
			 stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery(sql);
			 
			if(rs.next())
			{
				  pk_college_id = rs.getInt(1);
				  
			}
			else
			{
				
				out.println("Data Not Found");
			}
			
			String sql2="select pk_id from course_name where course ='"+department+"' ";
			System.out.println(sql2);
			 stmt = con.prepareStatement(sql2);
			ResultSet rs2 = stmt.executeQuery(sql2);
			System.out.println(rs2);
			if(rs2.next())
			{
				  pk_department_id = rs2.getInt(1);
				  System.out.println(pk_department_id);
				  
			}
			else
			{
				
				out.println("Data Not Found");
			}
			
			
			
			String sql1 = "insert into college_professor(fname,lname,dob,gender,department,position,phone,email,image,brief,fk_college_id)value(?,?,?,?,?,?,?,?,?,?,?)";

			stmt = con.prepareStatement(sql1);
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setString(3, date);
			stmt.setString(4, gender);
			stmt.setInt(5, pk_department_id);
			stmt.setString(6, position);
			stmt.setString(7, phone);
			stmt.setString(8, email);
			stmt.setString(9, pdfname);
			stmt.setString(10, bio);
			stmt.setInt(11, pk_college_id);

			int res = stmt.executeUpdate();

			if (res > 0) 
			{
				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/College-professors.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			} else {

				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/College-professors.jsp");
				out.println("<body><html><script>alert('Something went wrong');</script></html></body>");
			}
			 
			
			
		} //catch (FileUploadException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
