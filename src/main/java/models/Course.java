package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Course {
	// ATTRIBUTES
	Integer id;
	String name, description;
	
	// BUILDERS
	public Course(ResultSet data) throws SQLException {
		this.id = data.getInt("id");
		this.name = data.getString("course_name");
		this.description = data.getString("description");
	}

	public Course(Integer id_course, String nameCourse) {
		this.id = id_course;
		this.name = nameCourse;
	}

	// GETTERS AND SETTERS
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}