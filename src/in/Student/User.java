package in.Student;



public class User {
    String uname;
    String pass;

	public String getUname() 
	{
		System.out.println("h=get="+uname);
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
	}
	 public User(String uname, String pass)
	    {
	        this.uname = uname;
	        this.pass = pass;
	    
	        
	    }



   
}
