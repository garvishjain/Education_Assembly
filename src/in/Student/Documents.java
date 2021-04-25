package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import in.common.GetConnection;
import in.common.img;

/**
 * Servlet implementation class Documents
 */
@WebServlet("/Documents")
@MultipartConfig
public class Documents extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;

	public void init(ServletConfig config) throws ServletException 
		{
			GetConnection getcon = new GetConnection();
			con = getcon.getCon();
		
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
		ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
			
			 
			 
		 Part cast = request.getPart("cast");
		 Part income = request.getPart("income");
		 Part domicile = request.getPart("domicile");
		 Part aadhar = request.getPart("aadhar");
		 Part high = request.getPart("high");
		Part higher = request.getPart("higher");
		
		img img = new img();
		 String cast_file = cast.getSubmittedFileName();
		String cast_img = img.image(cast_file, cast);
		
		 String income_file = income.getSubmittedFileName();
		String income_img= img.image(income_file, income);
		
		
		 String domicile_file = domicile.getSubmittedFileName();
			String domicile_img = img.image(domicile_file, domicile);
			
			 String aadhar_file = aadhar.getSubmittedFileName();
			String aadhar_img= img.image(aadhar_file, aadhar);
			
			 String high_file = high.getSubmittedFileName();
				String high_img = img.image(high_file, high);
				
				 String higher_file = higher.getSubmittedFileName();
				String higher_img= img.image(higher_file, higher);
		
		
		String sql="insert into student_document(high,higher,cast,income,domicile,aadhar)"
				+ "values(?,?,?,?,?,?)";
		
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,high_img);
			stmt.setString(2,higher_img);
			stmt.setString(3,cast_img);
			stmt.setString(4,income_img);
			stmt.setString(5,domicile_img);
			stmt.setString(6,aadhar_img);
			int res = stmt.executeUpdate();
			
			if(res>0)
			{
				out.println("<html><body><script>alert('submitted');</script></body></html>");
			}
			else
			{
				out.println("<html><body><script>alert('data not submitted');</script></body></html>");
			}
		} 
		catch (SQLException e) 
					{
						e.printStackTrace();
					}
	}

}
