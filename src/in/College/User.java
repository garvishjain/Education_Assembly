package in.College;

public class User {
	
	private String name;
	private String email;
	private String username;
	public User(String name, String email, String username) {
		super();
		this.name = name;
		this.email = email;
		this.username = username;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	

}
