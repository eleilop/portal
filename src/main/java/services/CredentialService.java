package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connections.Conector;
import models.Credential;

public class CredentialService {
	/**
	 * Gets all the info of a credential by providing the email
	 * @param email Email of the credential
	 * @return A credential object that contains all the info
	 */
	public static Credential getCredentialByEmail(String email) {
		Credential credential = null;
        Connection con = null;
        String sql = "SELECT * FROM credentials WHERE email LIKE ?";
        
        try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet data = pst.executeQuery();
			if (data.next())
				credential = new Credential(data);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return credential;
	}
	
	/**
	 * Insert a new row with the given info in the credential table
	 * @param email Email to insert
	 * @param password Password to insert
	 */
	public static void insertCredentials(String email, String password) {
        Connection con = null;
        String sql = "call insertUserCredentials(?,?)";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
	
	/**
	 * Checks if the given email exists
	 * @param email Email to check
	 * @return True if the email exists | False in other case
	 */
	public static boolean checkIfEmailExist(String email) {
        Connection con = null;
        boolean emailExists = false;
        String sql = "SELECT * FROM credentials WHERE email LIKE ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            emailExists = rs.next();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        
        return emailExists;
    }
	
	/**
	 * Gets an email by providing the id
	 * @param id Id of the email to get
	 * @return Email to get
	 */
	public static String getEmailById(int id) {
        Connection con = null;
        String email = "";
        String sql = "SELECT email FROM credentials WHERE id = ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            	email = rs.getString("email");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        
        return email;
    }
	
	/**
	 * Gets a password by providing the id
	 * @param id Id of the password to get
	 * @return Password to get
	 */
	public static String getPasswordById(int id) {
        Connection con = null;
        String password = "";
        String sql = "SELECT pass FROM credentials WHERE id = ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            	password = rs.getString("pass");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        
        return password;
    }
	
	/**
	 * Changes the password of an id with the given password
	 * @param id Id of the password to change
	 * @param password New password
	 */
	public static void changePasswordById(int id, String password) {
        Connection con = null;
        String sql = "UPDATE credentials SET pass = ? WHERE id = ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, password);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
	}
	
	/**
	 * Changes the email of an id with the given email
	 * @param id Id of the email to change
	 * @param email New email
	 */
	public static void changeEmailById(int id, String email) {
        Connection con = null;
        String sql = "UPDATE credentials SET email = ? WHERE id = ?";
        
        try {
        	con = new Conector().getMySqlConnection();
        	PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
	}
	
	/**
	 * Deletes a row of the credential table by giving an id
	 * @param id Id of the row to delete
	 */
	public static void deleteCredential(int id) {
        Connection con = null;
        String sql = "DELETE FROM credentials WHERE id = ?";
        
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