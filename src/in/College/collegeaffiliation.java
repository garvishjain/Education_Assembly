package in.College;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import in.common.GetConnection;
import in.common.hashed;
import in.common.img;

/**
 * Servlet implementation class collegeaffiliation
 */
@WebServlet("/collegeaffiliation")
public class collegeaffiliation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int pk_city_id;
	private Connection con;
	private int active=0;
   
    private ResultSet rs;
	private PreparedStatement stmt,stmt1,stmt5,stmt6;

	private int  pk_address_id ;

	public void init(ServletConfig config) throws ServletException 
	{
    GetConnection getConObj=new GetConnection();
    con=getConObj.getCon();
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Random rnd = new Random();
        int number = rnd.nextInt(99999999);
        try 
		{
		  
        	String cname = request.getParameter("cname")!= null ? request.getParameter("cname") : "";
        	String uni = request.getParameter("n1");
        	
    		int  uninum = request.getParameter("uniname")!= null ? Integer.parseInt(request.getParameter("uniname")): 0;
    		String dname = request.getParameter("dname")!= null ? request.getParameter("dname") : "";
    		int type = Integer.parseInt(request.getParameter("ctype")!= null ? request.getParameter("ctype") : "");
    		int fax= Integer.parseInt(request.getParameter("cfax")!= null ? request.getParameter("cfax") : "");
    		int category = Integer.parseInt(request.getParameter("ccategory")!= null ? request.getParameter("ccategory") : "");
    		String user = request.getParameter("uname")!= null ? request.getParameter("uname") : "";
    		String email = request.getParameter("email")!= null ? request.getParameter("email") : "";
    	   int  num = Integer.parseInt(request.getParameter("num")!= null ? request.getParameter("num") : "");
    		int year = Integer.parseInt(request.getParameter("year")!= null ? request.getParameter("year") : "");
    		String address = request.getParameter("address")!= null ? request.getParameter("address") : "";
    		String cntry =request.getParameter("cntry")!= null ? request.getParameter("cntry") : "";
            int state = Integer.parseInt(request.getParameter("state")!= null ? request.getParameter("state") : "");
    		String city = request.getParameter("city")!= null ?  request.getParameter("city") : "";
    		int pincode = Integer.parseInt(request.getParameter("pincode")!= null ? request.getParameter("pincode") : "11/01/2000");
    		Part pdf = request.getPart("pdf");
    		Part pic = request.getPart("pic");
    		String pass = request.getParameter("pass")!= null ? request.getParameter("pass") : "";
    		
    		
		
		
		String filename = pdf.getSubmittedFileName();
		String filename1 = pic.getSubmittedFileName();
				
		
		
		String reg_num ="col" + number ;
		
		
		hashed hash = new hashed();
		String Hashed =hash.getHash(pass);
		
		img image=new img();
		String pdfname = image.image(filename, pdf);
		String picname = image.image(filename1, pic);
		
		
		//fetch city pk_id
		
		 String sql="select pk_id from city where fk_state_id ='"+state+"' ";
		System.out.println(sql);
		 stmt = con.prepareStatement(sql);
		 rs = stmt.executeQuery(sql);
		 
		if(rs.next())
		{
			  pk_city_id = rs.getInt(1);
			  
		}
		else
		{
			
			out.println("Data Not Found");
		}
		
		
		
		
		
		String sql1="insert into college_address(address,pincode,fk_city_id,fk_college_id) values (?,?,?,?)";
		
				
				
				 stmt1 = con.prepareStatement(sql1);
				stmt1.setString(1,address);
				stmt1.setInt(2,pincode);
				stmt1.setInt(3,pk_city_id);
				stmt1.setString(4,reg_num);
				
				
				 int res = stmt1.executeUpdate();
			if(res>0)
				{
				out.println("Data Found");
				
				}
				else
				{
					
					out.println("Data Not Found");
				}	
			
		
				
			//fetch the fk_address_id
				
				String sql6="select pk_id from college_address where fk_college_id='"+reg_num+"' ";
				System.out.println(sql6);
				 stmt6 = con.prepareStatement(sql6);
				ResultSet rs1 = stmt6.executeQuery(sql6);
					
				if(rs1.next())
				{
					 pk_address_id = rs1.getInt(1);
				}
				else
				{
					
					out.println("Data Not Found");
				}
				
				
				
//				String cname = request.getParameter("cname")!= null ? request.getParameter("cname") : "";
//	    		int  uninum = Integer.parseInt(request.getParameter("uniname")!= null ? request.getParameter("uniname") : "");
//	    		String dname = request.getParameter("dname")!= null ? request.getParameter("dname") : "";
//	    		int type = Integer.parseInt(request.getParameter("ctype")!= null ? request.getParameter("ctype") : "");
//	    		int fax= Integer.parseInt(request.getParameter("cfax")!= null ? request.getParameter("cfax") : "");
//	    		int category = Integer.parseInt(request.getParameter("ccategory")!= null ? request.getParameter("ccategory") : "");
//	    		String user = request.getParameter("uname")!= null ? request.getParameter("uname") : "";
//	    		String email = request.getParameter("email")!= null ? request.getParameter("email") : "";
//	    	   String  num = request.getParameter("num")!= null ? request.getParameter("num") : "";
//	    		int year = Integer.parseInt(request.getParameter("year")!= null ? request.getParameter("year") : "");
//	    		String address = request.getParameter("address")!= null ? request.getParameter("address") : "";
//	    		String cntry =request.getParameter("cntry")!= null ? request.getParameter("cntry") : "";
//	            int state = Integer.parseInt(request.getParameter("state")!= null ? request.getParameter("state") : "");
//	    		String city = request.getParameter("city")!= null ?  request.getParameter("city") : "";
//	    		int pincode = Integer.parseInt(request.getParameter("pincode")!= null ? request.getParameter("pincode") : "11/01/2000");
//	    		Part pdf = request.getPart("pdf");
//	    		Part pic = request.getPart("pic");
//	    		String pass = request.getParameter("pass")!= null ? request.getParameter("pass") : "";
//	    		
			
			// college registration data inserted	
				 String sql5="insert into college_registration"
				 		+ "(registration_num,C_name,D_name,Email,Est_year,Fax_num,fk_address_id,c_catagory,"
				 		+ "c_type,u_name,ph_num,c_image,Affiliation_pdf,username,password,is_active )"
				 		+ "value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
					
					
				 stmt5 = con.prepareStatement(sql5);
				stmt5.setString(1,reg_num);
				stmt5.setString(2,cname);
				stmt5.setString(3,dname);
				stmt5.setString(4,email);
				stmt5.setInt(5,year);
				stmt5.setInt(6,fax);
				stmt5.setInt(7,pk_address_id);
				stmt5.setInt(8,category);
				stmt5.setInt(9,type);
				stmt5.setInt(10,uninum);
				stmt5.setInt(11,num);
				stmt5.setString(12,picname);
				stmt5.setString(13,pdfname);
				stmt5.setString(14,user);
				stmt5.setString(15,Hashed);
				stmt5.setInt(17,active);

				
				
			    int res5 = stmt5.executeUpdate();
				if(res5>0)
				{
					out.println("<html><body><script>alert('Data Enter registration no is' )+'"+reg_num +"';</script></body></html>");
				}
				else
				{
					out.println("<html><body><script>alert('Some Thing Went Wrong');</script></body></html>");
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
