package in.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.security.auth.message.callback.SecretKeyCallback.Request;

import in.Student.*;
import in.common.GetConnection;

public class St_GetData 
{
	
		private String usename;
	
		private Connection con;
		private String sql;
		private Statement stmt;
		
	
		public String getUsename() {
			return usename;
		}
		public void setUsename(String usename) {
			this.usename = usename;
		}
	
		
		public int Get_student()
		{
			try {
			GetConnection getConObj = new GetConnection();
			con = getConObj.getCon();
			stmt = con.createStatement();
					
			
			St_Login st = new St_Login();
			String user = st.getUsername();
			System.out.println(user);
			if(con != null)
			{
				sql = "select * from student_information where username='" + user +"' LIMIT 1";
				ResultSet rs = stmt.executeQuery(sql);
				if(rs.next())
				{
						String n = rs.getString(1);
						
				}	
			}
					
			
			else
			{
				System.out.println("Else EXCEPTION");
				throw new RuntimeException("Connection Can't be established");
			}
			}
				catch (SQLException e) 
				{
					System.out.println("SQL EXCEPTION");
					
					throw new RuntimeException (e.getMessage());
				}
				
	
		
			return  0 ;
		}
			
			
			
	
		
		
			
		
}
