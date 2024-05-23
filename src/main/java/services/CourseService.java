package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connections.Conector;
import models.Course;

public class CourseService {
	/**
	 * Gets all the info of a course by providing the course id
	 * @param idCourse Id of the course
	 * @return A course object that contains all the info
	 */
	public static Course getCourseInfo(int idCourse) {
    	Course course = null;
    	Connection con = null;
    	String sql = "SELECT * FROM course WHERE id = ?";

		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, idCourse);
			ResultSet data = pst.executeQuery();
			if (data.next())
				course = new Course(data);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return course;
	}
	
	/**
	 * Gets the id and name of all the courses
	 * @return List of courses
	 */
	public static List<Course> selectCourses() {
		List<Course> courses = new ArrayList<Course>();
		Connection con = null;
		String sql = "SELECT id, course_name FROM course";
		
		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet result = ps.executeQuery();
			while (result.next()) {
				int id = result.getInt("id");
				String name = result.getString("course_name");
				courses.add(new Course(id, name));
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

		return courses;
	}
}