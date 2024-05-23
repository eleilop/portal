package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connections.Conector;
import models.School;

public class SchoolService {
	/**
	 * Gets all the info of a school by providing the school id
	 * @param idSchool Id of the school
	 * @return A school object that contains all the info
	 */
	public static School getInfoSchool(int idSchool){
		School school = null;
		Connection con = null;
		String sql = "SELECT * FROM school WHERE id = ?";

		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, idSchool);
			ResultSet data = pst.executeQuery();
			if (data.next())
				school = new School(data);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return school;
	}
	
	/**
	 * Gets the id and name of all the schools
	 * @return List of schools
	 */
	public static List<School> selectSchools() {
		List<School> schools = new ArrayList<School>();
		Connection con = null;
		String sql = "SELECT id, school_name FROM school";
		
		try {
			con = new Conector().getMySqlConnection();
			try {
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet result = ps.executeQuery();
				while (result.next()) {
					int id = result.getInt("id");
					String name = result.getString("school_name");
					schools.add(new School(id, name));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return schools;
	}
	
	public static String getSchoolColor(int idSchool){
		String color = "A100FF";
		Connection con = null;
		String sql = "SELECT color FROM school WHERE id = ?";

		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, idSchool);
			ResultSet data = pst.executeQuery();
			if (data.next())
				color = data.getString("color");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return color;
	}
}