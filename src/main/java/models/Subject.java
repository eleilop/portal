package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Subject {
	// ATTRIBUTES
	private int id, weeklyHours, totalHours;
	private String name, pdf;
	
	// BUILDERS
	public Subject(ResultSet data) throws SQLException {
		this.id = data.getInt("id");
		this.name = data.getString("subject_name");
		this.weeklyHours = data.getInt("weekly_hours");
		this.totalHours = data.getInt("total_hours");
		this.pdf = data.getString("pdf");
	}

	// GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getWeeklyHours() {
		return weeklyHours;
	}

	public void setWeeklyHours(int weeklyHours) {
		this.weeklyHours = weeklyHours;
	}

	public int getTotalHours() {
		return totalHours;
	}

	public void setTotalHours(int totalHours) {
		this.totalHours = totalHours;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPdf() {
		return pdf;
	}

	public void setPdf(String pdf) {
		this.pdf = pdf;
	}
}