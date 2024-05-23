package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.CredentialService;
import services.UserService;

import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String inputName = req.getParameter("user_name");
        String inputLastName = req.getParameter("user_lastname");
        String inputEmail = req.getParameter("user_email");
        String inputBirthdate = req.getParameter("user_birthday");
        String inputDnie = req.getParameter("user_nif");
        String inputSchool = req.getParameter("user_center");
        String inputCourse = req.getParameter("user_course");
        String inputPass = req.getParameter("user_password");
        String hashedPass = BCrypt.hashpw(inputPass, BCrypt.gensalt());
        
        boolean emailExists = CredentialService.checkIfEmailExist(inputEmail);
        boolean dnieExists = UserService.checkIfDnieExist(inputDnie);
            
        if (emailExists || dnieExists) {
        	if (emailExists)
            	session.setAttribute("emailExists" , "El email ya existe");
        	if (dnieExists)
            	session.setAttribute("dniExists", "El dni ya existe");
            resp.sendRedirect("./jsp/register.jsp");
        } else {
        	CredentialService.insertCredentials(inputEmail, hashedPass);
            UserService.insertUserInDb(inputName, inputLastName, inputBirthdate, inputDnie, inputEmail, hashedPass, inputSchool, inputCourse);
            session.setAttribute("loginMessage", "Alumno creado con éxito");
            resp.sendRedirect("./jsp/login.jsp");
        }
    }
}