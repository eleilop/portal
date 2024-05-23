package servlets;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.User;
import services.CredentialService;

@WebServlet(name = "ChangePasswordServlet", urlPatterns = "/password")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String actualPassword = req.getParameter("actual_password");
		String newPassword = req.getParameter("new_password");
		String message = "";
		
		if (!actualPassword.equals(newPassword)) {
			// GETS THE USER LOGGED
			User user = (User)(session.getAttribute("user"));
			String passwordDB = CredentialService.getPasswordById(user.getId());
			if (BCrypt.checkpw(actualPassword, passwordDB)) {
				newPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt());
				CredentialService.changePasswordById(user.getId(), newPassword);
				message = "Contraseña cambiada con éxito";
			} else {
				message = "Contraseña incorrecta";
			}
		} else {
			message = "La nueva contraseña debe ser diferente a la actual";
		}
		
		session.setAttribute("passwordMessage", message);
		resp.sendRedirect("./jsp/datosPersonales.jsp");
	}
}