package in.University;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
	private Statement stmt = null;
	
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
	
	
	public ArrayList<GetProfessorsDB> getData(int collegeId,String isCollege)
	
	{
		ArrayList<GetProfessorsDB> list = new ArrayList<>();
		GetConnection getConObj = new GetConnection();
		con = getConObj.getCon();
		
		String sql="select department_name.Details as dept,university_professor.* from  university_professor,university_department,"
				+ "department_name where university_department.fk_department_name=department_name.pk_id AND "
				+ "university_professor.department=university_department.pk_id and university_professor.iscollege='"+isCollege+"' and university_professor.collegeid="+collegeId;
	
		System.out.println(sql);
		
		
		
		if(con != null)
		{

			try 
			{
				
				stmt=con.createStatement();
				
				
				ResultSet result = stmt.executeQuery(sql);
				result.last();
				System.out.println(result.getRow());
				
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
				
				//System.out.print(list.size());
			} 
			catch (SQLException e) 
			{
				System.out.println(e);
				throw new RuntimeException ("");
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
	
	
	
	
	
	

