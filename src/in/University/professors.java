package in.University;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

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

import org.apache.catalina.core.ApplicationContext;


@WebServlet("/professors")
@MultipartConfig
public class professors extends HttpServlet {
	private Connection con;
	private PreparedStatement stmt;
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		/* ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory()); */
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			int uid =Integer.parseInt(request.getParameter("uid"));
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String dob = request.getParameter("dob")!= null ? request.getParameter("dob") : "11/01/2000";
			String gender = request.getParameter("gender");
			String department = request.getParameter("department");
			String position = request.getParameter("position");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			
			Date parsedob = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
			java.sql.Date dobDate = new java.sql.Date(parsedob.getTime());
			
			/*Getting Image */
			Part filePart = request.getPart("image");
			String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
			
			
			/*For accessing Webcontent Folder, Making path with JUGAAD*/
			
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
			
			String sql = "insert into university_professor(fname,lname,dob,gender,department,position,phone,email,image,fk_university_id)value(?,?,?,?,?,?,?,?,?,?)";

			stmt = con.prepareStatement(sql);
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setDate(3, dobDate);
			stmt.setString(4, gender);
			stmt.setString(5, department);
			stmt.setString(6, position);
			stmt.setString(7, phone);
			stmt.setString(8, email);
			stmt.setString(9, imageNameForDb);
			stmt.setInt(9, uid);

			int res = stmt.executeUpdate();

			if (res > 0) 
			{
				try (InputStream input = filePart.getInputStream()) 
				{ 
				    Files.copy(input, file.toPath(),StandardCopyOption.REPLACE_EXISTING);
				}
				catch(Exception  e)
				{
					System.out.println(e);
				}
			  out.println("<body><html><script>alert('Data Insert');</script></html></body>");
			  
			} 
			else
			{
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
