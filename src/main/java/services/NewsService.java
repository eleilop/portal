package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connections.Conector;
import models.News;

public class NewsService {
	/**
	 * Gets all the info of a news by providing the school id
	 * @param schoolId Id of the school
	 * @return A news object that contains all the info
	 */
	public static News getNewsBySchoolId(int schoolId) {
		News news = null;
        Connection con = null;
        String sql = "SELECT * FROM news WHERE school = ?";
        
        try {
			con = new Conector().getMySqlConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, schoolId);
			ResultSet data = pst.executeQuery();
			if (data.next())
				news = new News(data);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return news;
	}
}