package in.University;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import in.common.GetConnection;
import in.common.img;

@WebServlet("/courses")
@MultipartConfig
public class courses extends HttpServlet {
	private Connection con;
	private PreparedStatement stmt;
	private String path;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		 GetConnection getConObj=new GetConnection();
			Connection con=getConObj.getCon();
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
			InputStream imgName = part.getInputStream();
			System.out.println("check");
			
			 String filename = part.getSubmittedFileName();
			System.out.println(filename);
		   	
		   	Image imageObj = new Image(filename, part);
		   	imageObj.service(request, response);
		   	String iname=(String)request.getAttribute("fileName")!=null ? (String)request.getAttribute("fileName") : "";
		   	System.out.println(iname);
			 
			 System.out.println(id+name+duration+fees+seats+"\n"+iname);
			
			String sql="insert into university_courses(course_id,course_name,course_duration,course_fees,course_seat,image)values(?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, duration);
			stmt.setString(4, fees);
			stmt.setString(5, seats);
			stmt.setString(6, iname);
			
			
			int res = stmt.executeUpdate();
			if(res>0)
			{
				out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			}
			else
			{
				out.println("<body><html><script>alert('Something Went Wrong');</script></html></body>");
			}
			
		}catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
	}

}
