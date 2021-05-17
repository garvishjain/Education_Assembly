package in.University;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.file.Paths;
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
/*import javax.servlet.http.Part;*/
import javax.servlet.http.Part;

import in.common.GetConnection;
/*import in.common.img;*/

@WebServlet("/courses")
@MultipartConfig
public class courses extends HttpServlet {
	private Connection con;
	private int university=1234;
	private PreparedStatement stmt;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 GetConnection getConObj=new GetConnection();
			con = getConObj.getCon();
	}
	
	public  String getImageDesination()
	{
		try 
		{
			String path = this.getClass().getClassLoader().getResource("").getPath();
			String fullPath = URLDecoder.decode(path, "UTF-8");
			String[] destinationParts = fullPath.split(".metadata");
			String desPath=destinationParts[0]+"Education_Assembly/WebContent/university/img";
			
			return desPath;
		}
		catch(Exception e)
		{
			throw new RuntimeException();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			String u_id = request.getParameter("u_id")!=null?request.getParameter("u_id") : "";
			String name = request.getParameter("name")!=null?request.getParameter("name") : "";
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
			/*Part part = request.getPart("image");
			String filename = part.getSubmittedFileName();
			
			img img = new img();
			String image = img.image(filename, part)!=null?img.image(filename,part) : "";*/
			Part filePart = request.getPart("image");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			
			String desPath=getImageDesination();
			
			System.out.println(desPath);
			/*For Image name, making unqiue Name*/
			int lastIndex = fileName.lastIndexOf(".");
			String imgName=fileName.substring(0,lastIndex);
			String imgExt=fileName.substring(lastIndex, fileName.length());
			
			
			/*Setting the path to store the Image*/
			File destination = new File(desPath);
			File file = File.createTempFile(imgName, imgExt, destination);
			
			/*Copying Image on destination, If exists Will replace*/
			
			
			/*This imageName will stored in db*/
			String imageNameForDb=file.toString().substring(file.toString().lastIndexOf(File.separator)+1);
			
			String sql1="select pk_id from semester where sem='"+sem+"'";
			stmt = con.prepareStatement(sql1);
			ResultSet rs = stmt.executeQuery(sql1);
			if (rs.next()) {
			 sem = rs.getString(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql2="select pk_id from university";
			stmt = con.prepareStatement(sql2);
			ResultSet rs2 = stmt.executeQuery(sql2);
			if (rs2.next()) {
					university = rs2.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql3="select pk_id from course_details";
			stmt = con.prepareStatement(sql3);
			ResultSet rs3 = stmt.executeQuery(sql3);
			int brief=123;
			if (rs3.next()) {
					brief = rs3.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String sql4="select pk_id from course_highlights";
			stmt = con.prepareStatement(sql4);
			ResultSet rs4 = stmt.executeQuery(sql4);
			int highlight=123;
			if (rs4.next()) {
					highlight = rs4.getInt(1);
			} else {
				out.println("<body><html><script>alert('No Data Found');</script></html></body>");
			}
			
			String query="insert into university_courses(course_id,course_fees,course_seat,course_brief,fk_university_id)values(?,?,?,?,?)";
		
			stmt = con.prepareStatement(query);
			stmt.setString(1, name);
			stmt.setString(2, fees);
			stmt.setString(3, seat);
			stmt.setInt(4, brief);
			stmt.setInt(5, university);			
			int res1 = stmt.executeUpdate();
			
			String query1="insert into course_details(about_course,eligible_criteria,image,fk_course_highlight)values(?,?,?,?)";
			stmt = con.prepareStatement(query1);
			stmt.setString(1, course);
			stmt.setString(2, eligible);
			stmt.setString(3, imageNameForDb);
			stmt.setInt(4, highlight);
			int res2 = stmt.executeUpdate();
			
			String query2="isert into course_highlights(scholarship,fk_semseter,min_perc,sub_required,semester_fees,placement_package,placement_opportunity)values(?,?,?,?,?,?,?)";
			stmt = con.prepareStatement(query2);
			stmt.setString(1, scholar);
			stmt.setString(2, sem);
			stmt.setString(3, perc);
			stmt.setString(4, sub);
			stmt.setString(5, fees);
			stmt.setString(6, place);
			stmt.setString(7, opportunity);
			int res3 = stmt.executeUpdate();
			
			
			
			if(res1>0 && res2>0 && res3>0)
			{
				request.setAttribute("status", "succesfull login");
				response.sendRedirect("university/courses.jsp");
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/courses.jsp");
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
	}

}
