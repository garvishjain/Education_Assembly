package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.Session;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import in.common.GetConnection;
import in.common.GetName;
import in.common.hashed;
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
		Part tc = request.getPart("tc");
		Part migration = request.getPart("migration");
		
		String cast_file = cast.getSubmittedFileName();
		String cast1 = cast_file+(LocalDateTime.now().toString().replace(":",""));
		String path = "G:\\i\\"+cast1;
		String finallocation = path+""+ cast_file;
		cast.write(finallocation);
		
		String income_file = income.getSubmittedFileName();
		String income1 = income_file+(LocalDateTime.now().toString().replace(":",""));
		String path1 = "G:\\i\\"+income1;
		String finallocation1 = path1+""+ income_file;
		income.write(finallocation1);
		
		String  domicile_file = domicile.getSubmittedFileName();
		String  domicile1= domicile_file+(LocalDateTime.now().toString().replace(":",""));
		String path2 = "G:\\i\\"+ domicile1;
		String finallocation2 = path2+""+  domicile_file;
		domicile.write(finallocation2);
		
		String  aadhar_file = aadhar.getSubmittedFileName();
		String  aadhar1=  aadhar_file+(LocalDateTime.now().toString().replace(":",""));
		String path3 = "G:\\i\\"+ aadhar1;
		String finallocation3 = path3 +""+  aadhar_file;
		 aadhar.write(finallocation3);
		
		 String  high_file = high.getSubmittedFileName();
			String  high1=  high_file+(LocalDateTime.now().toString().replace(":",""));
			String path4 = "G:\\i\\"+ high1;
			String finallocation4 = path4 +""+  high_file;
			high.write(finallocation4);
		
			 String  higher_file = higher.getSubmittedFileName();
				String  higher1=  higher_file+(LocalDateTime.now().toString().replace(":",""));
				String path5 = "G:\\i\\"+ higher1;
				String finallocation5 = path5 +""+  higher_file;
				higher.write(finallocation5);
		
		String tc_file = tc.getSubmittedFileName();
		String tc1 = tc_file+(LocalDateTime.now().toString().replace(":",""));
		String path6 = "G:\\i\\"+tc1;
		String finallocation6 = path6 +""+ tc_file;
		tc.write(finallocation6 );
		
		String migration_file = migration.getSubmittedFileName();
		String migration1 = migration_file+(LocalDateTime.now().toString().replace(":",""));
		String path7 = "G:\\i\\"+migration1;
		String finallocation7 = path7 +""+ migration_file;
		migration.write(finallocation7 );
		
		
		hashed gethash = new hashed();
		
		 	
		 	
	/*	img img = new img();
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
				
				String tc_file = tc.getSubmittedFileName();
				String tc_img= img.image(tc_file,tc);
				String migration_file = migration.getSubmittedFileName();
				String migration_img= img.image(migration_file, migration);*/
		
		
		
		String sql="insert into student_document(high,higher,cast,income,domicile,aadhar,transfer_certificate,migration,fk_student_information)"
				+ "values(?,?,?,?,?,?,?,?,?)";
		
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,path4);
			stmt.setString(2,path5);
			stmt.setString(3,path);
			stmt.setString(4,path1);
			stmt.setString(5,path2);
			stmt.setString(6,path3);
			stmt.setString(7,path6);
			stmt.setString(8,path7);
			stmt.setInt(9,1);
			int res = stmt.executeUpdate();
			
			if(res>0)
			{
			
				out.println("Data Submitted");
				 response.sendRedirect("student/document.jsp?status="+gethash.getHash("CBCtrue")); 
				
			}
			else
			{
				out.println("Data Submitted");
				 response.sendRedirect("student/document.jsp?status="+gethash.getHash("CBCtrue")); 
			}
		} 
		catch (SQLException e) 
					{
						e.printStackTrace();
					}
	}

}
