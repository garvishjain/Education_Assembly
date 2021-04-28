package in.Student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import in.common.GetConnection;
import in.common.hashed;

public class Log_in 
		{
	
			private Connection con;
			private Statement stmt;
			private String uname;
			private String pass;
			private String hashed;
			public String getUname() {
				return uname;
			}
			public void setUname(String uname) {
				this.uname = uname;
			}
			public String getPass() {
				return pass;
			}
			public void setPass(String pass) {
				this.pass = pass;
				hashed hash = new hashed();
				hashed = hash.getHash(pass);
			}
			
			public boolean get_Data(String username) throws SQLException
			{
				this.setUname(username); 
				
				return Student_Login();
				
				
			}
			
			private boolean Student_Login() throws SQLException
			{
				GetConnection getcon = new GetConnection();
				con = getcon.getCon();
				stmt = con.createStatement();
				System.out.println(uname+hashed);
				
				String sql = "Select * from user where username ='" + uname + "' and password= '"+ hashed + "' LIMIT 1"; 
				ResultSet rs = stmt.executeQuery(sql);
				if (rs.next()) 
				{
						rs.getString("username");
						return true;
				}
				return false; 
		
			}
		
		}
