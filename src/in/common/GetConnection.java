package in.common;

import java.sql.Connection;
import java.sql.SQLException;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class GetConnection 
{
	
	private Connection con;
	
	
	
	public Connection getCon() 
	{
		getConnection();
		return con;
	}



	public void setCon(Connection con) {
		this.con = con;
	}



	private void getConnection()
	{
		InitialContext cxt;
		try 
		{
			cxt = new InitialContext();
			DataSource ds = (DataSource) cxt.lookup("java:comp/env/myCon");
			setCon(ds.getConnection());
			
			
		} 
		
		catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException("Connection error");
		}
		
		
	}
}
