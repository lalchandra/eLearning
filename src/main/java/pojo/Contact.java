package pojo;

public class Contact {
   
	private int userId;
	private String name;
	private String email;
	private Long phone;
	private String message;
	private int contactId;
	
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
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	@Override
	public String toString() {
		return "Contact [userId=" + userId + ", name=" + name + ", email=" + email + ", phone=" + phone + ", message="
				+ message + ", contactId=" + contactId + "]";
	}
	public Contact(int userId, String name, String email, Long phone, String message, int contactId) {
		super();
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
		this.contactId = contactId;
	}
	
	
}
