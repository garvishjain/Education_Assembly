package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

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

import in.common.GetConnection;
import in.common.hashed;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement stmt;
	private int pk_authentication_id, fk_state ;
	

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
			GetConnection getcon = new GetConnection();
			con = getcon.getCon();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Random rnd = new Random();
        int number = rnd.nextInt(99999999);
        String u_reg ="UNI" + number ;
		try 
		{
			/*String ureg = request.getParameter("ureg")!= null ? request.getParameter("ureg") : "";*/
			String u_name = request.getParameter("uname")!= null ? request.getParameter("uname") : "";
			String u_adrs = request.getParameter("uadrs")!= null ? request.getParameter("uadrs") : "";
			String country = request.getParameter("cntry")!= null ? request.getParameter("cntry") : "";
			String state = request.getParameter("state")!= null ? request.getParameter("state") : "";
			String city = request.getParameter("city")!= null ? request.getParameter("city") : "";
			String u_ctgry = request.getParameter("uctgry")!= null ? request.getParameter("uctgry") : "";
			String u_type = request.getParameter("utype")!= null ? request.getParameter("utype") : "";
			String u_email = request.getParameter("uemail")!= null ? request.getParameter("uemail") : "";
			String year = request.getParameter("year")!= null ? request.getParameter("year") : "";
			String quota = request.getParameter("quota")!= null ? request.getParameter("quota") : "";
			int pk = 12;
			int rt = 123, rt4 = 1234,rt5 = 12345,rt6 = 123456,rt7=1234567,rt8=12345678;
//			<--- university contact start --->
			String regname = request.getParameter("regname")!= null ? request.getParameter("regname") : "";
			String contactname = request.getParameter("contact_name")!= null ? request.getParameter("contact_name") : "";
			String contactnum = request.getParameter("contact_num")!= null ? request.getParameter("contact_num") : "";
			String designation = request.getParameter("designation")!= null ? request.getParameter("designation") : "";
			
			/*university account start*/
			String username = request.getParameter("username")!= null ? request.getParameter("username") : "";
			String pswd = request.getParameter("pswd")!= null ? request.getParameter("pswd") : "123";

			String sql2="insert into university_contact(registrar_name,contact_name,contact_number,designation)value(?,?,?,?)";
			stmt = con.prepareStatement(sql2);
			stmt.setString(1, regname);
			stmt.setString(2, contactname);
			stmt.setString(3, contactnum);
			stmt.setString(4, designation);
			
			hashed gethash = new hashed();
			String hashed = gethash.getHash(pswd);
			
			
			int res2 = stmt.executeUpdate();
//			<--- university contact end --->
			
//			<--- foreign key convert start --->
			String sqll="select pk_id from university_contact where contact_number='"+contactnum+"' ";
		
			stmt = con.prepareStatement(sqll);
			ResultSet rs = stmt.executeQuery(sqll);
			if(rs.next())
			{
				pk = rs.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll2="select pk_id from country where country_name='"+country+"' ";
	
			stmt = con.prepareStatement(sqll2);
			ResultSet rs2 = stmt.executeQuery(sqll2);
			if(rs2.next())
			{
				rt = rs2.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll3="select pk_id from state where state_name='"+state+"' ";
	
			stmt = con.prepareStatement(sqll3);
			ResultSet rs3 = stmt.executeQuery(sqll3);
			
			if(rs3.next())
			{
				 fk_state = rs3.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll4="select pk_id from city where city_name='"+city+"' ";
		
			stmt = con.prepareStatement(sqll4);
			ResultSet rs4 = stmt.executeQuery(sqll4);
			if(rs4.next())
			{
				rt4 = rs4.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll5="select pk_id from category where category='"+u_ctgry+"' ";
			
			stmt = con.prepareStatement(sqll5);
			ResultSet rs5 = stmt.executeQuery(sqll5);
			if(rs5.next())
			{
				rt5 = rs5.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll6="select pk_id from type where type='"+u_type+"' ";
			stmt = con.prepareStatement(sqll6);
			ResultSet rs6 = stmt.executeQuery(sqll6);
			if(rs6.next())
			{
				rt6 = rs6.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll7="select pk_id from Establish_years where years='"+year+"' ";
			
			stmt = con.prepareStatement(sqll7);
			ResultSet rs7 = stmt.executeQuery(sqll7);
			if(rs7.next())
			{
				rt7 = rs7.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll8="select pk_quota from quota where details='"+quota+"' ";
			
			stmt = con.prepareStatement(sqll8);
			ResultSet rs8 = stmt.executeQuery(sqll8);
			if(rs8.next())
			{
				rt8 = rs8.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
//			<--- foreign key convert end --->		
			

//			<--- university register start --->
            String sql3="insert into user(name,email,username,password,register_num)values(?,?,?,?,?)";
			
			stmt = con.prepareStatement(sql3);
			stmt.setString(1, regname);
			stmt.setString(2, u_email);
			stmt.setString(3, username);
			stmt.setString(4, hashed);
			stmt.setString(5, u_reg);
			
			int res3 = stmt.executeUpdate();
			if(res3>0)
			{
			String sql6="select id from user ORDER BY id  DESC Limit 1";
			System.out.println(sql6);
			 stmt = con.prepareStatement(sql6);
			ResultSet rs1 = stmt.executeQuery(sql6);
				
			if(rs1.next())
			{
				 pk_authentication_id = rs1.getInt(1);
				 System.out.println(rs1);
			}
			else
			{
				
				out.println("Data Not Found");
			}	
			}

			
//			<--- university register start --->
			String query="insert into university(u_registration,u_name,address,fk_country,fk_state,fk_city,fk_category,fk_type,email,establish_year,fk_contact_number,quota,fk_authentication_id)value(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			System.out.println(query);
			stmt = con.prepareStatement(query);
			stmt.setString(1, u_reg);
			stmt.setString(2, u_name);
			stmt.setString(3, u_adrs);
			stmt.setInt(4, rt);
		    stmt.setInt(5, fk_state);
			stmt.setInt(6, rt4);
			stmt.setInt(7, rt5);
			stmt.setInt(8, rt6);
			stmt.setString(9, u_email);
			stmt.setString(10,year);
			stmt.setInt(11, pk);
			stmt.setInt(12, rt8);
			stmt.setInt(13, pk_authentication_id);
			
			int res = stmt.executeUpdate();

			
			if(res>0 && res2>0 && res3>0)
			{
				out.println("<html><body><script>alert('Data Inserted');</script></body></html>");
				request.setAttribute("status","Successfully Registered");
				response.sendRedirect("student/home.jsp");
			}
			else
			{
				out.println("<html><body><script>alert('Not Inserted');</script></body></html>");
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/university-register.jsp");
			}
			
		} 
//		<--- university register end --->
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(NullPointerException e)
		{
			e.printStackTrace();
		}
	}
}
