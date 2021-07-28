package pojo;

public class Course {
    
	private int courseId;
	private String courseName;
	private String courseDesp;
	private String courseFee;
	private String courseResource;
	
	public int getCourseId() {
		return courseId;
	}
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Course(int courseId, String courseName, String courseDesp, String courseFee, String courseResource) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDesp = courseDesp;
		this.courseFee = courseFee;
		this.courseResource = courseResource;
	}
	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName + ", courseDesp=" + courseDesp
				+ ", courseFee=" + courseFee + ", courseResource=" + courseResource + "]";
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseDesp() {
		return courseDesp;
	}
	public void setCourseDesp(String courseDesp) {
		this.courseDesp = courseDesp;
	}
	public String getCourseFee() {
		return courseFee;
	}
	public void setCourseFee(String courseFee) {
		this.courseFee = courseFee;
	}
	public String getCourseResource() {
		return courseResource;
	}
	public void setCourseResource(String courseResource) {
		this.courseResource = courseResource;
	}
	
	
	
}
