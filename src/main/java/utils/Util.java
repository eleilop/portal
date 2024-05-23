package utils;

import models.Course;
import models.User;

public class Util {
	public static String getContentTarjetaIndex(User activeUser, String centerName, Course course) {
		String result = "";
		
		switch (activeUser.getType()) {
			case "01":
				result = "Alumno/a de " + course.getName();
				break;
			case "02":
				result = "Profesor/a " + centerName;
				break;
			case "03":
				result = "Empleado/a de Accenture";
				break;
		}
		
		return result;
	}
	
	/**
	 * Método que formatea la fecha tipo aaaa-dd-mm a dd/mm/aaaa
	 * Sólo funciona si la fecha es tipo aaaa-dd-mm
	 * @param date Fecha a cambiar
	 * @return Fecha cambiada
	 */
	public static String dateFormat(String date) {
		String year = date.substring(0,4);
		String month = date.substring(5, 7);
		String day = date.substring(8,10);
		String newDate = day + "/" + month + "/" + year;
		
		return newDate;
	}
}