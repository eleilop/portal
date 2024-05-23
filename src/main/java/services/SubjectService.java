package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connections.Conector;
import models.Subject;

public class SubjectService {
	/**
	 * Gets all the info of all the subjects of a course
	 * @param courseId Id of the course to get the subjects
	 * @return List of subjects
	 */
	public static List<Subject> getSubjectsByCourseId(int courseId) {
		List<Subject> subjects = new ArrayList<Subject>();
		Connection con = null;
		String sql = "SELECT * "
				   + "FROM _subject S JOIN course_subject CS ON (S.id = CS.subject) JOIN course C ON (CS.course = C.id) "
				   + "WHERE C.id = ?";
		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, courseId);
			ResultSet result = ps.executeQuery();
			while (result.next())
				subjects.add(new Subject(result));
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

		return subjects;
	}
}