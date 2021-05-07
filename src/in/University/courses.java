package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

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
	private Connection con;
	private PreparedStatement stmt;

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
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String duration = request.getParameter("duration");
			String fees = request.getParameter("fees");
			String seats = request.getParameter("seats");
			Part part = request.getPart("image");
			String filename = part.getSubmittedFileName();
			
			img img = new img();
			String image = img.image(filename, part);
			
			System.out.println(id+name+duration+fees+seats+"\n"+image);
			
			String sql="insert into university_courses(course_id,course_name,course_duration,course_fees,course_seat,image)values(?,?,?,?,?,?)";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, name);
			stmt.setString(3, duration);
			stmt.setString(4, fees);
			stmt.setString(5, seats);
			stmt.setString(6, image);
			
			
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

	private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
				for(String s : items) {
					if(s.trim().startsWith("image"));
					return s.substring(s.indexOf("=")+2,s.length()-1);
				}
		return "";
	}


}
