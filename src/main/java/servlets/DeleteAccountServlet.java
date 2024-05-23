package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.User;
import services.CredentialService;
import services.UserService;

@WebServlet(name = "DeleteAccountServlet", urlPatterns = "/account")
public class DeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User)(session.getAttribute("user"));
		
		UserService.deleteUser(user.getId());
		CredentialService.deleteCredential(user.getId());
		
		resp.sendRedirect("./jsp/datosPersonales.jsp");
	}
}