package in.University;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import in.common.GetConnection;

public class GetProfessorsDB 
{
	private int professorId;
	private	String firstName;
	private String lastName;
	private String fullName;

	private String department;
	private String gender;
	private long phone;
	private String position;
	private Connection con = null;
	private PreparedStatement stmt = null;
	
	public int getProfessorId() {
		return professorId;
	}
	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
	
	/*private void getConnection()
	{
		InitialContext cxt;
		try 
		{
			cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			con = ds.getConnection();
			
			
		} 
		
		catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException("Connection error");
		}
		
		
	}*/
	
	public ArrayList<GetProfessorsDB> getData(int collegeId,String isCollege)
	{
		
		
		ArrayList<GetProfessorsDB> list = new ArrayList<>();
		GetConnection getConObj = new GetConnection();
		con = getConObj.getCon();
		
		if(con != null)
		{
			String sql="select department.department_name as dept,professor.* from professor,department where professor.department=department.pk_id and iscollege=? and collegeid=?";
			try 
			{
				
				stmt=con.prepareStatement(sql);
				stmt.setString(1, "Y");
				stmt.setInt(2, collegeId);
				
				
				ResultSet result = stmt.executeQuery();
				
				
				
				
				int i=0;
				while(result.next())
				{		GetProfessorsDB data=new GetProfessorsDB();
						String fname=result.getString("fname")!= null ? result.getString("fname") : "";
						String lname=result.getString("lname")!= null ? result.getString("lname") : "";
						
						data.setFirstName(fname);
						data.setLastName(lname);
						data.setGender(result.getString("gender")!= null ? result.getString("gender") : "");
						data.setDepartment(result.getString("dept")!= null ? result.getString("dept") : "");
						data.setPhone(result.getLong("phone")!= 0 ? result.getLong("phone") : 0);
						data.setPosition(result.getString("position")!= null ? result.getString("position") : "");
						data.setFullName(fname+" "+lname);
						list.add(data);
						
				}
				
			} 
			catch (SQLException e) 
			{
				System.out.println("SQL EXCEPTION");
				
				throw new RuntimeException (e.getMessage());
			}
			
			
		}
		else
		{
			System.out.println("Else EXCEPTION");
			throw new RuntimeException("Connection Can't be established");
		}
		return list ;
	}
		
		
		
	}
	
	
	
	
	
	

