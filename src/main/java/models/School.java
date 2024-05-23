package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class School {
	// ATTRIBUTES
	int id;
	String name, tlf, email, schedule, location, image, mapLink, color;
	
	// BUILDERS
	public School(ResultSet data) throws SQLException {
		this.id = data.getInt("id");
		this.name = data.getString("school_name");
		this.tlf = data.getString("tel");
		this.email = data.getString("email");
		this.schedule = data.getString("secretarySchedule");
		this.location = data.getString("loc");
		this.image = data.getString("image");
		this.mapLink = data.getString("mapLink");
		this.color = data.getString("color");
	}
	
	public School(int idSchool, String schoolName) {
		this.id = idSchool;
		this.name = schoolName;
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

	public String getTlf() {
		return tlf;
	}

	public void setTlf(String tlf) {
		this.tlf = tlf;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getMapLink() {
		return mapLink;
	}

	public void setMapLink(String mapLink) {
		this.mapLink = mapLink;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
}