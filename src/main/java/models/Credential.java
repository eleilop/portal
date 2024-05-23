package models;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Credential {
	// ATTRIBUTES
    private int id;
    private String email, password;
    
    // BUILDERS
    public Credential(ResultSet data) throws SQLException {
    	this.id = data.getInt("id");
        this.email = data.getString("email");
        this.password = data.getString("pass");
    }

    // GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}