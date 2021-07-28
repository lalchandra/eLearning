package pojo;

public class AdminInfo {
     
	
	String name;
	
	String password;
	
	public AdminInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminInfo(String name, String password) {
		super();
		
		this.name = name;
		
		this.password = password;
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "AdminInfo [name=" + name + ", password=" + password + "]";
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
