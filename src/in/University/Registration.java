package in.University;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	
	private PreparedStatement stmt2;
	private PreparedStatement stmt;
	private PreparedStatement stmt3;
	private int pk;
	private int rt, rt4,rt5,rt6;
	

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try 
		{
			Context cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			con = ds.getConnection();
		} 
		catch (NamingException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try 
		{
			String ureg = request.getParameter("ureg")!= null ? request.getParameter("ureg") : "";
			String uname = request.getParameter("uname")!= null ? request.getParameter("uname") : "";
			String uadrs = request.getParameter("uadrs")!= null ? request.getParameter("uadrs") : "";
			String cntry = request.getParameter("cntry")!= null ? request.getParameter("cntry") : "";
			String state = request.getParameter("state")!= null ? request.getParameter("state") : "";
			String city = request.getParameter("city")!= null ? request.getParameter("city") : "";
			String uctgry = request.getParameter("uctgry")!= null ? request.getParameter("uctgry") : "";
			String utype = request.getParameter("utype")!= null ? request.getParameter("utype") : "";
			String uemail = request.getParameter("uemail")!= null ? request.getParameter("uemail") : "";
			String year = request.getParameter("year")!= null ? request.getParameter("year") : "";
			/*String contact = request.getParameter("contact")!= null ? request.getParameter("contact") : "";*/
			String quota = request.getParameter("quota")!= null ? request.getParameter("quota") : "";
			
			
			String regname = request.getParameter("regname")!= null ? request.getParameter("regname") : "";
			String contactname = request.getParameter("contact_name")!= null ? request.getParameter("contact_name") : "";
			String contactnum = request.getParameter("contact_num")!= null ? request.getParameter("contact_num") : "";
			String designation = request.getParameter("designation")!= null ? request.getParameter("designation") : "";
			
			
			String sql2="insert into university_contact(registrar_name,contact_name,contact_number,designation)value(?,?,?,?)";
			stmt2 = con.prepareStatement(sql2);
			stmt2.setString(1, regname);
			stmt2.setString(2, contactname);
			stmt2.setString(3, contactnum);
			stmt2.setString(4, designation);
			
			int res2 = stmt2.executeUpdate();
			
			String sqll="select pk_id from university_contact where contact_number='"+contactname+"' ";
			System.out.println(sqll);
			stmt3 = con.prepareStatement(sqll);
			ResultSet rs = stmt3.executeQuery(sqll);
			if(rs.next())
			{
				pk = rs.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll2="select pk_id from country where country_name='"+cntry+"' ";
			System.out.println(sqll2);
			stmt3 = con.prepareStatement(sqll2);
			ResultSet rs2 = stmt3.executeQuery(sqll2);
			if(rs2.next())
			{
				rt = rs2.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll3="select pk_id from state where state_name='"+state+"' ";
			System.out.println(sqll3);
			stmt3 = con.prepareStatement(sqll3);
			ResultSet rs3 = stmt3.executeQuery(sqll3);
			int fk_state_id =0;
			if(rs3.next())
			{
				 fk_state_id = rs3.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll4="select pk_id from city where city_name='"+city+"' ";
			System.out.println(sqll4);
			stmt3 = con.prepareStatement(sqll4);
			ResultSet rs4 = stmt3.executeQuery(sqll4);
			if(rs4.next())
			{
				rt4 = rs4.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll5="select pk_id from category where details='"+uctgry+"' ";
			System.out.println(sqll5);
			stmt3 = con.prepareStatement(sqll5);
			ResultSet rs5 = stmt3.executeQuery(sqll5);
			if(rs5.next())
			{
				rt5 = rs5.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sqll6="select pk_id from type where details='"+utype+"' ";
			System.out.println(sqll6);
			stmt3 = con.prepareStatement(sqll6);
			ResultSet rs6 = stmt3.executeQuery(sqll6);
			if(rs6.next())
			{
				rt6 = rs6.getInt(1);
			}
			else
			{
				out.println("Data Not Found");
			}
			String sql="insert into Registration(u_registration,u_name,address,fk_country,fk_state,fk_city,fk_catagory,fk_type,email,establish_year,fk_contact_number,quota)value(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, ureg);
			stmt.setString(2, uname);
			stmt.setString(3, uadrs);
			stmt.setInt(4, rt);
		    stmt.setInt(5, fk_state_id);
			stmt.setInt(6, rt4);
			stmt.setInt(7, rt5);
			stmt.setInt(8, rt6);
			stmt.setString(9, uemail);
			stmt.setString(10, year);
			stmt.setInt(11, pk);
			stmt.setString(12, quota);
			
			int res = stmt.executeUpdate();
			if(res>0 && res2>0)
			{
				request.setAttribute("status","Successfully Registered");
				response.sendRedirect("university/university-manager.jsp");
			}
			else
			{
				request.setAttribute("status", "Failed to sign up...! please try again");
				response.sendRedirect("university/university-register.jsp");
			}
			
		} 
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
