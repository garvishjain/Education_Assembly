package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;
import in.common.GetConnection;
import in.common.img;

/**
 * Servlet implementation class collegecourse
 */
@MultipartConfig
@WebServlet("/collegecourse")
public class collegecourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private int pk_highlights_id,pk_details_id,pk_college,pk_course,semm;
	private PreparedStatement stmt,stmt6;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 GetConnection getConObj=new GetConnection();
			con = getConObj.getCon();
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{   String cname = request.getParameter("cname")!=null?request.getParameter("cname") : "";
			String sname = request.getParameter("sname")!=null?request.getParameter("sname") : "";
			String fees = request.getParameter("fees")!=null?request.getParameter("fees") : "";
			String seat = request.getParameter("seat")!=null?request.getParameter("seat") : "";
			String course = request.getParameter("course")!=null?request.getParameter("course") : "";
			String eligible = request.getParameter("eligible")!=null?request.getParameter("eligible") : "";
			String scholar = request.getParameter("scholar")!=null?request.getParameter("scholar") : "";
			String sem = request.getParameter("sem")!=null?request.getParameter("sem") : "";
			String perc = request.getParameter("perc")!=null?request.getParameter("perc") : "";
			String sub = request.getParameter("sub")!=null?request.getParameter("sub") : "";
			String place = request.getParameter("place")!=null?request.getParameter("place") : "";
			String opportunity = request.getParameter("opportunity")!=null?request.getParameter("opportunity") : "";
			Part part = request.getPart("image");
			String Coursecat =request.getParameter("coursecat")!=null?request.getParameter("coursecat") : "";
			String filename = part.getSubmittedFileName();
			System.out.println(sname);
			
			img image=new img();
			String imgname = image.image(filename, part);
			
			String sql1="select pk_id from semester where sem='"+sem+"'";
			stmt = con.prepareStatement(sql1);
			
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
			semm = rs.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
				
			}
			
			String query2="insert into course_highlights(scholarship,fk_semester,min_perc,sub_required,semester_fees,placement_package,placement_opportunity)values(?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(query2);
			stmt.setString(1, scholar);
			stmt.setInt(2, semm);
			stmt.setString(3, perc);
			stmt.setString(4, sub);
			stmt.setString(5, fees);
			stmt.setString(6, place);
			stmt.setString(7, opportunity);
			int res3 = stmt.executeUpdate();
			
			if(  res3>0)
			{String sql6="select pk_id from course_highlights ORDER BY pk_id  DESC Limit 1";
			System.out.println(sql6);
			 stmt6 = con.prepareStatement(sql6);
			ResultSet rs1 = stmt6.executeQuery(sql6);
				
			if(rs1.next())
			{
				 pk_highlights_id = rs1.getInt(1);
			}
			else
			{
				
				out.println("Data Not Found");
			}
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/College-courses.jsp");
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
			String query1="insert into course_details(about_course,eligible_criteria,images,fk_course_highlights)values(?,?,?,?)";
			stmt = con.prepareStatement(query1);
			stmt.setString(1, course);
			stmt.setString(2, eligible);
			stmt.setString(3, imgname);
			stmt.setInt(4, pk_highlights_id);
			int res2 = stmt.executeUpdate();
			if(  res2>0)
			{String sql7="select pk_id from course_details ORDER BY pk_id  DESC Limit 1";
			System.out.println(sql7);
			 stmt6 = con.prepareStatement(sql7);
			ResultSet rs1 = stmt6.executeQuery(sql7);
				
			if(rs1.next())
			{
				 pk_details_id = rs1.getInt(1);
			}
			else
			{
				
				out.println("Data Not Found");
			}
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/College-courses.jsp");
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
			
			
			
			
			String sql2="select pk_id from college_registration where college_name = '"+cname+"'";
			stmt = con.prepareStatement(sql2);
			ResultSet rs2 = stmt.executeQuery(sql2);
			if (rs2.next()) {
					pk_college = rs2.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql5="select pk_id from course_name where course = '"+sname+"'";
			System.out.println(sql5);
			stmt = con.prepareStatement(sql5);
			ResultSet rs3 = stmt.executeQuery(sql5);
			if (rs3.next()) {
					pk_course = rs3.getInt("pk_id");
					System.out.println(pk_course);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			
			
			String query="insert into college_course(course_id,course_fees,course_seat,course_brief,fk_college_id,course_category)values(?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(query);
			stmt.setInt(1, pk_course);
			stmt.setString(2, fees);
			stmt.setString(3, seat);
			stmt.setInt(4, pk_details_id);
			stmt.setInt(5, pk_college);	
			stmt.setString(6, Coursecat);
			int res1 = stmt.executeUpdate();
			
		
			
			
			
			if(res1>0 && res2>0 && res3>0)
			{
				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/College-courses.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/College-courses.jsp");
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		}catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(NullPointerException e)
		{
			e.printStackTrace();
		}
			
			
			
			
		
	}

}
