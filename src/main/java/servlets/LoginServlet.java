package servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Credential;
import models.User;
import services.CredentialService;
import services.UserService;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;


@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        String inputEmail = req.getParameter("email");
        String inputPassword = req.getParameter("password");
        Credential credential = CredentialService.getCredentialByEmail(inputEmail);
        boolean landing = false;
        String message = "";
            
        if (credential != null) {
        	String hashedPassFromDB = credential.getPassword();
        	if(BCrypt.checkpw(inputPassword, hashedPassFromDB)) {
            	User user = UserService.getUserById(credential.getId());
            	session.setAttribute("user", user);
            	landing = true;
            } else
            	message = "Contraseña incorrecta";
       	} else
        	message = "El usuario no existe";

		if (landing)
			resp.sendRedirect("index.jsp");
		else {
			session.setAttribute("loginMessage", message);
			resp.sendRedirect("jsp/login.jsp");
		}
    }
}