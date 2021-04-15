package in.University;

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
 * Servlet implementation class University_Data
 */
@WebServlet("/University_Data")
public class University_Data extends HttpServlet {
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
		
		String rgs = request.getParameter("ureg");
		String name = request.getParameter("uname");
		String adrs = request.getParameter("uadrs");
		String type = request.getParameter("utype");
		String category = request.getParameter("uctgry");
		String num1 = request.getParameter("unum1");
		String num2 = request.getParameter("unum2");
		String email = request.getParameter("uemail");
		String url = request.getParameter("uurl");
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
		
		String sql="insert into university"
		+ "(u_registration,u_name,address,fk_state,fk_city,fk_catagory"
		+ ",fk_type,establish_year,fk_contact_number,quota)"
		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,rgs);
		stmt.setString(2,name);
		stmt.setString(3,adrs);
		stmt.setString(4,type);
		stmt.setString(5,category);
		stmt.setString(6,num1);
		stmt.setString(7,num2);
		stmt.setString(8,email);
		stmt.setString(9,url);
		stmt.setString(10,country);
		stmt.setString(11,state);
		stmt.setString(12,city);
		stmt.setString(13,pincode);
		stmt.setString(14,fax);
		stmt.setString(15,quota);
		
		int res1 = stmt.executeUpdate();
		
		/*Second Query For COntact Information*/
		
		String sql1="insert into university_contact"
		+ "(contact_name,contact_number,destination,registrar_name"
		+ ",fk_university_id)values(?,?,?,?,?)";
		
		
		PreparedStatement stmt1 = con.prepareStatement(sql1);
		stmt.setString(1,registrar);
		stmt.setString(2,con_name);
		stmt.setString(3,con_num);
		stmt.setString(4,designation);
		
		int res2 = stmt.executeUpdate();
		
		
		
		
		if(res1>0&&res2>0)
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
