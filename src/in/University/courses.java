package in.University;

import java.io.IOException;
import java.io.PrintWriter;
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
import in.common.img;

@WebServlet("/courses")
@MultipartConfig
public class courses extends HttpServlet {
	private PreparedStatement stmt;
	private int coursename=123;
	private PreparedStatement stmt1;
	private Connection con;
	private int dur=12;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 GetConnection getConObj=new GetConnection();
			con = getConObj.getCon();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			String id = request.getParameter("id")!=null?request.getParameter("id") : "";
			String name = request.getParameter("name")!=null?request.getParameter("name") : "";
			String duration = request.getParameter("duration")!=null?request.getParameter("duration") : "";
			String fees = request.getParameter("fees")!=null?request.getParameter("fees") : "";
			String seats = request.getParameter("seats")!=null?request.getParameter("seats") : "";
			Part part = request.getPart("image");
			String filename = part.getSubmittedFileName();
			
			img img = new img();
			String image = img.image(filename, part)!=null?img.image(filename,part) : "";
			
			String brief = request.getParameter("brief")!=null?request.getParameter("brief") : "";
			
			String sql1="select pk_id from course_name where course_name='"+name+"'";
			stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
			 coursename = rs.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			
			String sql2="select pk_id from duration where duration='"+duration+"'";
			stmt = con.prepareStatement(sql2);
			ResultSet rs2 = stmt.executeQuery(sql2);
			if (rs2.next()) {
					dur = rs.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			
			String sql="insert into university_courses(course_id,course_name,course_duration,course_fees,course_seat,image,course_brief)values(?,?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setInt(2, coursename);
			stmt.setInt(3, dur);
			stmt.setString(4, fees);
			stmt.setString(5, seats);
			stmt.setString(6, image);
			stmt.setString(7, brief);
			
			
			int res = stmt.executeUpdate();
			if(res>0)
			{
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		}
		catch(NullPointerException e)
		{
			e.printStackTrace();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
	}

	/*private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
				for(String s : items) {
					if(s.trim().startsWith("image"));
					return s.substring(s.indexOf("=")+2,s.length()-1);
				}
		return "";
	}*/


}
