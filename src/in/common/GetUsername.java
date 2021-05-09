package in.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetUsername 
{
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void getNameData(String tableName,String hashedId) throws SQLException
	{
		GetConnection gc=new GetConnection();
		Connection con = gc.getCon();
		String sql="select id from "+tableName ;
		PreparedStatement stmt = con.prepareStatement(sql);
		
		
		
		
		ResultSet rs = stmt.executeQuery(sql);
		
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
		
		 sql="select name from "+tableName+" where id=? LIMIT 1";
		 stmt = con.prepareStatement(sql);
		 
		 
		
		stmt.setInt(1, id); 
		rs=stmt.executeQuery();
		System.out.println(sql);
		
		
		if(rs.next())
		{
			setName(rs.getString("name"));
		}

	}
	
}
