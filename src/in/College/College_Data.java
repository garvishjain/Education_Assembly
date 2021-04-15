package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class College_Data
 */
@WebServlet("/College_Data")
public class College_Data extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;

	public void init(ServletConfig config) throws ServletException 
	{
		try {
			Context cxt = (Context)new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:com/env/myCon");
			con = ds.getConnection();
		} 
		catch (NamingException e) 
			{
				e.printStackTrace();
			} 
		catch (SQLException e) 
			{
				e.printStackTrace();
			}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
	
		try {
		
		String rgs = request.getParameter("creg");
		String name = request.getParameter("cname");
		String adrs = request.getParameter("cadrs");
		String type = request.getParameter("ctype");
		String category = request.getParameter("cctgry");
		String num1 = request.getParameter("cnum");
		String email = request.getParameter("cemail");
		String url = request.getParameter("curl");
		String country = request.getParameter("cntry");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String fax = request.getParameter("faxnum");
		String quota = request.getParameter("quota");
		String registrar = request.getParameter("regname");
		String con_name = request.getParameter("contact_name");
		String con_num = request.getParameter("contact_num");
		String designation = request.getParameter("desig");
		
		String sql="insert into college"
		+ "(registration_no,name,college_dean,fk_college_address"
		+ "fk_college_type,fk_category,Contact_num,contact_number	"
		+ "fk_city,fk_course,eligible_criteria,seat,fk_university_id)"
		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,rgs);
		stmt.setString(2,name);
		stmt.setString(3,adrs);
		stmt.setString(4,type);
		stmt.setString(5,category);
		stmt.setString(6,num1);
		stmt.setString(7,email);
		stmt.setString(8,url);
		stmt.setString(9,country);
		stmt.setString(10,state);
		stmt.setString(11,city);
		stmt.setString(12,pincode);
		stmt.setString(13,fax);
		stmt.setString(15,quota);
		
		int res1 = stmt.executeUpdate();
		
		/*Second Query For COntact Information*/
		/*String sql1="insert into "
		+ "(contact_name,contact_number,destination,registrar_name"
		+ ",fk_university_id)values(?,?,?,?,?)";
		
		
		PreparedStatement stmt1 = con.prepareStatement(sql1);
		stmt.setString(1,registrar);
		stmt.setString(2,con_name);
		stmt.setString(3,con_num);
		stmt.setString(4,designation);
		
		int res2 = stmt.executeUpdate()*/;
		
		
		
		
		if(res1>0)
		{
			out.println("<html><body><script>alert('Successfully registered');</script></body></html>");
		}
		else
		{
			out.println("<html><body><script>alert('Sorry!please check all the field..');</script></body></html>");
		}
		} 
		catch (SQLException e) 
			{
				e.printStackTrace();
			}
		
		
	
	
	
	
	
	
	
	}

}
