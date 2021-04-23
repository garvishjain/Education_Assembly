package in.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import in.Student.*;
import in.common.GetConnection;

public class St_GetData 
{
		private String firstName;
		private String lastName;
		private String usename;
		private String dob;
		private String email;
		private String gender;
		private String f_name;
		private String m_name;
		private Connection con;
		private String sql;
		private Statement stmt;
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getUsename() {
			return usename;
		}
		public void setUsename(String usename) {
			this.usename = usename;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getDob() {
			return dob;
		}
		public void setDob(String dob) {
			this.dob = dob;
		}
		public String getF_name() {
			return f_name;
		}
		public void setF_name(String f_name) {
			this.f_name = f_name;
		}
		public String getM_name() {
			return m_name;
		}
		public void setM_name(String m_name) {
			this.m_name = m_name;
		}
		
		public int Get_student()
		{
			try {
			GetConnection getConObj = new GetConnection();
			con = getConObj.getCon();
				stmt = con.createStatement();
					} 
			catch (SQLException e1)
			{
				e1.printStackTrace();
			}
			
			St_Login st= new St_Login();
			String uname = st.getUsername();
			System.out.println("getstring username = "+uname);
			if(con != null)
			{
				
				sql = "select * from student_information where username='" + uname +"' LIMIT 1";
				try 
				{
							ResultSet rs = stmt.executeQuery(sql);
								rs.getString(1);
					
					
					
								/*		int i=0;
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
							
					}*/
					
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
			return  0 ;
		}
			
			
			
	
		
		
			
		
}
