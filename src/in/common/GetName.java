package in.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetName 
{
	private String name;
	private String Email;
	private ResultSet rs;
	private String sql;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	public void getNameData(String tableName,String hashedId) throws SQLException
	{
		GetConnection gc=new GetConnection();
		Connection con = gc.getCon();
		 sql="select pk_id from "+tableName ;
		PreparedStatement stmt = con.prepareStatement(sql);
		
		
		
		
		 rs = stmt.executeQuery(sql);
		
		hashed hash = new hashed();
		int id=-1;
		
		while(rs.next())
		{
			if(hash.getHash(String.valueOf(rs.getInt(1))).equals(hashedId))
			{
				id=rs.getInt(1);
				break;
			}
		}
		
		
		
		if(tableName.equals("college_registration"))
		{
			sql="select college_name, Email from "+tableName+" where pk_id=? LIMIT 1";
			 stmt = con.prepareStatement(sql);
			 
			 
			
			stmt.setInt(1, id); 
			rs=stmt.executeQuery();
			System.out.println(sql);
			
			
			if(rs.next())
			{
				String name =  rs.getString("college_name"); 
				String lname =  rs.getString("Email");
				
				setName(name);
				setEmail(lname);
			}
			
		}
		else if(tableName.equals("university"))
		{
		 sql="select u_name, email from "+tableName+" where pk_id=? LIMIT 1";
			 stmt = con.prepareStatement(sql);
			 		 
			
			stmt.setInt(1, id); 
			rs=stmt.executeQuery();
			System.out.println(sql);    
			
			
			if(rs.next())
			{
				String name =  rs.getString("u_name"); 
				String lname =  rs.getString("email");
				
				setName(name);
				setEmail(lname);
			}
			
		}
		
		else
		{
		 sql="select first_name, last_name from "+tableName+" where pk_id=? LIMIT 1";
		 stmt = con.prepareStatement(sql);
		 
		 
		
		stmt.setInt(1, id); 
		rs=stmt.executeQuery();
		System.out.println(sql);
		
		
		if(rs.next())
		{
			String fname =  rs.getString("first_name"); 
			String lname =  rs.getString("last_name");
			String name = fname+lname;
			setName(name);
		}
		
	   }
		

	}
	
}
