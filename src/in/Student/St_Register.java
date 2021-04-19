package in.Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;
import javax.xml.bind.DatatypeConverter;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class St_Register
 */
@WebServlet("/St_Register")
@MultipartConfig
public class St_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String hashing;
	private Connection con;
	private String hashed;
	private int fk_address;
	private int fk_education;
	
	private String getHash(byte[] passbyte,String algo) 
				{
					try 
						{
							MessageDigest msgdigest = MessageDigest.getInstance(algo);
							msgdigest.update(passbyte);
							byte[] passdigest = msgdigest.digest();
							hashing = DatatypeConverter.printHexBinary(passdigest).toLowerCase();
						}
					catch (NoSuchAlgorithmException e) 
						{
							e.printStackTrace();
						}
					return hashing;
				}

						
	public void init(ServletConfig config) throws ServletException 
				{
					try 
							{
								Context cxt = new InitialContext();
								DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
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
			ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
			
			try {  
				
			/*Student Information*/
						String fname = request.getParameter("fname")      	  !=null?request.getParameter("fname") : "";
						String lname = request.getParameter("lname")           !=null?request.getParameter("lname") : "";
						String adhar=request.getParameter("adhar")         	  !=null?request.getParameter("adhar") : "";
						String email=request.getParameter("email")           	  !=null?request.getParameter("email") : "";
						String num = request.getParameter("num")                !=null?request.getParameter("num") : "";
						String dob = request.getParameter("dob")             	  !=null?request.getParameter("dob") : "";
						String gender=request.getParameter("gender")         !=null?request.getParameter("gender") : "";
						String f_name = request.getParameter("f_name")       !=null?request.getParameter("f_name") : "";
						String m_name = request.getParameter("mname")     !=null?request.getParameter("mname") : "";
						String f_num = request.getParameter("fnum")        	  !=null?request.getParameter("fnum") : "";
						String religion = request.getParameter("religion")     !=null?request.getParameter("religion") : "";
						String cast = request.getParameter("cast")          		  !=null?request.getParameter("cast") : "";
						String uname= request.getParameter("uname")         !=null?request.getParameter("uname") : "";
						String pass=request.getParameter("pass")             	  !=null?request.getParameter("pass") : "";
			/*Student Information*/                                                              
			/*StudentAddress*/		                                                             
						String adrs=request.getParameter("adrs")              	 !=null?request.getParameter("adrs") : "";
						String state = request.getParameter("state")         		 !=null?request.getParameter("state") : "";
						String city=request.getParameter("city")             		 !=null?request.getParameter("city") : "";
						String pincode=request.getParameter("pincode")     !=null?request.getParameter("pincode") : "";
			/*StudentAddress*/	                                              
						                                                       
			/*Education Detail*/	                                           
						String high = request.getParameter("high")           	  !=null?request.getParameter("high") : "";
						String higher = request.getParameter("higher")          !=null?request.getParameter("higher") : "";
						String roll=request.getParameter("roll")            			  !=null?request.getParameter("roll") : "";
						String school=request.getParameter("school")        	  !=null?request.getParameter("school") : "";
						String graduation = request.getParameter("graduation") !=null?request.getParameter("graduation") : "";
			/*Education Detail*/                                           
						                                                                                
			/*Password hashing*/
						byte[] passbyte = pass.getBytes();
						hashed = getHash(passbyte,"SHA-256");
		/*Password hashing*/		
						
			/*Date Parse*/
						 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
						 Date startDate = sdf.parse(dob);
						 String date = sdf.format(startDate);
		 /*Date Parse*/		
						 
		 /* image upload*/
						 Part part = request.getPart("image");
						 String filename = part.getSubmittedFileName();
						String s = filename+(LocalDateTime.now().toString().replace(":",""));
						 String path="G:\\i\\"+s;
						String finallocation = path +""+ filename;
					   	part.write(finallocation );
		 	/* image upload*/
						 
						 
			/*Insert Data into student_address*/
					String sql1="insert into student_address(address,state,city,pincode)values(?,?,?,?)";
					PreparedStatement stmt = con.prepareStatement(sql1);
					stmt.setString(1, adrs);
					stmt.setString(2, state);
					stmt.setString(3, city);
					stmt.setString(4, pincode);
					int res= stmt.executeUpdate();
					
					if (res>0)
					{
						String sql = "SELECT pk_id FROM student_address ORDER BY pk_id  DESC Limit 1" ;
						stmt = con.prepareStatement(sql);
						 ResultSet rs = stmt.executeQuery();
						fk_address = 0;
						if(rs.next())
						{
							 fk_address=rs.getInt(1);
						}
					}	
	/*Insert Data into student_address*/
					
	/*Insert Data into student_education*/
						String sql2="insert into student_education(high,higher,grad_percentage,last_roll_no,school_name)"
												+ "values(?,?,?,?,?)";
						stmt = con.prepareStatement(sql2);
						stmt.setString(1, high);
						stmt.setString(2, higher);
						stmt.setString(3, graduation);
						stmt.setString(4, roll);
						stmt.setString(5, school);
						int res1 = stmt.executeUpdate();
						if (res1>0)
							{
							String s1 = "SELECT pk_id FROM student_education ORDER BY pk_id  DESC Limit 1" ;
							stmt = con.prepareStatement(s1);
							ResultSet rs1 = stmt.executeQuery();
							fk_education = 0;
								if(rs1.next())
								{
									 fk_education=rs1.getInt(1);
								}
							}
						
	/*Insert Data into student_education*/
						
						
		/*Insert Data into student_information*/
						String sql="insert into student_information(first_name,last_name,email,gender,dob,religion,"
										+ "category,s_contact,image,f_name,m_name,f_num,aadhar_number,username,password,fk_address,fk_education)"
												+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
								stmt = con.prepareStatement(sql);
								stmt.setString(1, fname);
								stmt.setString(2, lname);
								stmt.setString(3, email);
								stmt.setString(4, gender);
								stmt.setString(5, date);
								stmt.setString(6, religion);
								stmt.setString(7, cast);
								stmt.setString(8, num);
								stmt.setString(9, s);
								stmt.setString(10, f_name);
								stmt.setString(11, m_name);
								stmt.setString(12, f_num);
								stmt.setString(13, adhar);
								stmt.setString(14, uname);
								stmt.setString(15, hashed);
								stmt.setInt(16, fk_address);
								stmt.setInt(17, fk_education);
								int res2 = stmt.executeUpdate();
					
								
			
					if(res>0&&res1>0&&res2>0)
					{
						out.println("<html><body><script>alert('Data Submitted');</script></body></html>");
						
					}
					else
					{
						out.println("<html><body><script>alert('Data Not Submitted');</script></body></html>");	
						
					}
			}
			catch (SQLException e) 
				{
					e.printStackTrace();
				} 
			catch (ParseException e) 
					{
						e.printStackTrace();
					}
			
		}
}