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

@WebServlet(name = "ChangeEmailServlet", urlPatterns = "/email")
public class ChangeEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User)(session.getAttribute("user"));
		String password = CredentialService.getPasswordById(user.getId());
		String inputPassword = req.getParameter("password");
		String message = "";
		
		if (BCrypt.checkpw(inputPassword, password)) {
			String inputEmail = req.getParameter("email");
			if (!CredentialService.checkIfEmailExist(inputEmail)) {
				CredentialService.changeEmailById(user.getId(), inputEmail);
				message = "Correo cambiado con éxito";
			} else
				message = "Este correo ya existe";
		} else
			message = "Contraseña incorrecta";
	
		session.setAttribute("emailMessage", message);
		resp.sendRedirect("./jsp/datosPersonales.jsp");
	}
}