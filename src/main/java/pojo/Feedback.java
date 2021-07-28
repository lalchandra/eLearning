package pojo;

public class Feedback {
  
	private int userId;
	private String name;
	private String email;
	private int fId;
	private String feedback;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	@Override
	public String toString() {
		return "Feedback [userId=" + userId + ", name=" + name + ", email=" + email + ", fId=" + fId + ", feedback="
				+ feedback + "]";
	}
	public Feedback(int userId, String name, String email, int fId, String feedback) {
		super();
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.fId = fId;
		this.feedback = feedback;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
