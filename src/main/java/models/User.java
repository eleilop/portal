package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
	// ATTRIBUTES
    private int id;
    private String name, type;
    private Integer schoolId, courseId;
    
    // BUILDERS
    public User(ResultSet data) throws SQLException {
    	this.id = data.getInt("id");
        this.name = data.getString("user_name");
        this.type = data.getString("user_type");
    	this.schoolId = data.getInt("school_id");
    	this.courseId = data.getInt("course_id");
    }

    // GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(Integer schoolId) {
		this.schoolId = schoolId;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
}