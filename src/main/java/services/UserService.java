package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connections.Conector;
import models.User;

public class UserService {
	/**
	 * Gets all the info of a user by providing the id
	 * @param id Id of the user
	 * @return A user object that contains all the info
	 */
	public static User getUserById(int id) {
		User user = null;
        Connection con = null;
        String sql = "SELECT id, user_name, user_type, school_id, course_id FROM user_obj WHERE id = ?";
        
        try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet data = pst.executeQuery();
			if (data.next())
				user = new User(data);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	/**
	 * Insert a new row with the given info in the user_obj table
	 * @param name Name to insert
	 * @param lastName Last name to insert
	 * @param birthDate Birthdate to insert
	 * @param dnie Dni to insert
	 * @param email Email to insert
	 * @param pass Password to insert
	 * @param schoolId School id to insert
	 * @param courseId Course id to insert
	 */
	public static void insertUserInDb(String name, String lastName, String birthDate, String dnie, 
									  String email, String pass, String schoolId, String courseId) 
	{
        Connection con = null;
        String sql = "call insertUser(?,?,?,?,?,?,?,?,?)";
		
		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
            ps.setString(2, lastName);
            ps.setString(3, birthDate);
            ps.setString(4, dnie);
            ps.setString(5, "01");
            ps.setString(6, email);
            ps.setString(7, pass);
            ps.setInt(8, Integer.parseInt(schoolId));
            ps.setInt(9, Integer.parseInt(courseId));
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
	
	/**
	 * Checks if the given dni exists
	 * @param dnie to check
	 * @return True if the dni exists | False in other case
	 */
	public static boolean checkIfDnieExist(String dnie) {
        boolean dnieExists = false;
        Connection con = null;
        String sql = "SELECT * FROM user_obj WHERE dnie LIKE ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, dnie);
            ResultSet rs = ps.executeQuery();
            dnieExists = rs.next();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        
        return dnieExists;
    }
	
	/**
	 * Gets some info of an user by providing an id
	 * @param id Id of the user
	 * @return List with the info
	 */
	public static List<String> getUserInfo(int id) {
		List<String> usuario = new ArrayList<String>();
		String sql = "SELECT user_name, user_surname, dnie, birthDate FROM user_obj WHERE id = ?";
		Connection con = null;

		try {
			con = new Conector().getMySqlConnection();
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				usuario.add(resultSet.getString("user_name"));
				usuario.add(resultSet.getString("user_surname"));
				usuario.add(resultSet.getString("dnie"));
				usuario.add(resultSet.getString("birthDate"));
			}
		} catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
		
		return usuario;
	}
	
	/**
	 * Deletes a row of the user_obj table by giving an id
	 * @param id Id of the row to delete
	 */
	public static void deleteUser(int id) {
        Connection con = null;
        String sql = "DELETE FROM user_obj WHERE id = ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
	}
}