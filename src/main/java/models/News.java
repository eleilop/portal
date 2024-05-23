package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class News {
	// ATTRIBUTES
	private int id, schoolId;
	private String title, subtitle, image, imageFooter, description;
	
	// BUILDERS
	public News(ResultSet data) throws SQLException {
		this.id = data.getInt("id");
		this.title = data.getString("titulo");
		this.subtitle = data.getString("subtitulo");
		this.image = data.getString("imagen");
		this.imageFooter = data.getString("pie");
		this.description = data.getString("descripcion");
		this.schoolId = data.getInt("school");
	}

	// GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSchoolId() {
		return schoolId;
	}

	public void setSchoolId(int school) {
		this.schoolId = school;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getImageFooter() {
		return imageFooter;
	}

	public void setImageFooter(String imageFooter) {
		this.imageFooter = imageFooter;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}