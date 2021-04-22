package in.University;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/professors")
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try 
		{
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String dob = request.getParameter("dob")!= null ? request.getParameter("dob") : "11/01/2000";
			String gender = request.getParameter("gender");
			String department = request.getParameter("department");
			String position = request.getParameter("position");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			
			Date parsedob = new SimpleDateFormat("dd--MM--yyyy").parse(dob);
			java.sql.Date dobDate = new java.sql.Date(parsedob.getTime());
			System.out.println(dobDate);
			
			
			List<FileItem> image = sf.parseRequest(request);
			
			for(FileItem img:image)
			{
				img.write(new File("F:\\myImage\\"+"CBC"+LocalDateTime.now().toString().replace(":","")+img.getName()));
				out.println("<html><body><script>('Image Inserted');</script></body></html>");
			}
			
			String sql="insert into professor(fname,lname,dob,gender,department,position,phone,email)value(?,?,?,?,?,?,?,?)";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setDate(3, dobDate);
			stmt.setString(4, gender);
			stmt.setString(5, department);
			stmt.setString(6, position);
			stmt.setString(7, phone);
			stmt.setString(8, email);
			
			int res = stmt.executeUpdate();
			
			if(res>0)
			{
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
