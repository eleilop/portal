<%@page import="services.SchoolService"%>
<%@page import="services.CredentialService"%>
<%@page import="services.CourseService"%>
<%@page import="services.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, utils.*, models.*"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="../styles/styleDatosPersonales.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<meta charset="UTF-8">
	<title>Datos Personales</title>
	
	<% User activeUser = (User) session.getAttribute("user");
	String color = "#"+SchoolService.getSchoolColor(activeUser.getSchoolId());
	String fullName = "";
	String email = "";
	String passwordMessage = "";
	String emailMessage = "";
	String dni = "";
	String birthdate = "";
	List<String> userData = UserService.getUserInfo(activeUser.getId());
	
	if (userData.size() > 0) {
		fullName = userData.get(0) + " "+ userData.get(1);
		email = CredentialService.getEmailById(activeUser.getId());
		dni = userData.get(2);
		birthdate = Util.dateFormat(userData.get(3));
		passwordMessage = (String)request.getSession().getAttribute("passwordMessage");
		emailMessage = (String)request.getSession().getAttribute("emailMessage");
	} %>
	
	<style type="text/css">
		h1 {color: <%= color %>;}
		
		.tarjetaPersonal {
			border-color: <%= color %>;
			box-shadow: 0px 0px 6px 3px <%= color %>;
		}
		
		.ladoIzquierdoTarjeta {color: <%= color %>;}
		
		.register-button::after {background-color: <%= color %>;}
		
		input {border: 1.8px <%= color %> solid;}
		
		.input_container input:focus {box-shadow: 0 0 5px <%= color %>;}
		
		#delete-button {background-color: <%= color %>;}
	</style>
</head>

<body>
	<% if (userData.size() < 1) { %>
	<h1>Se ha dado de baja al usuario</h1>
	<% } else { %>
	<h1>Datos Personales</h1>

	<div class="tarjetaPersonal">
		<div class="ladoIzquierdoTarjeta">
			<div class="columna">
				<div>
					<h3>Nombre completo</h3>
					<p><%= fullName %></p>
				</div>
				
				<div>
					<h3>Email</h3>
					<p><%= email %></p>
				</div>
			</div>
			<div class="columna">
				<div>
					<h3>Dni</h3>
					<p><%= dni %></p>
				</div>
				
				<div>
					<h3>Nacimiento</h3>
					<p><%= birthdate %></p>
				</div>
			</div>
		</div>

		<div class="ladoDerechoTarjeta">
			<svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
				<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
				<g id="SVGRepo_iconCarrier">
					<path d="M5 21C5 17.134 8.13401 14 12 14C15.866 14 19 17.134 19 21M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
				</g>
			</svg>
		</div>
	</div>
    
    <div id="forms">
	    <!-- CAMBIAR CONTRASEÑA -->
	    <form onsubmit="return passwordValidation()" action="../password" method="post" class="login">
	    	<h1>Cambiar contraseña</h1>
	    	<!-- CONTRASEÑA ACTUAL -->
			<div class="input_container">
				<input type="password" name="actual_password" required>
				<label>Contraseña actual</label>
			</div>
				
			<!-- NUEVA CONTRASEÑA -->
			<div class="input_container">
				<input type="password" name="new_password" id="new_password" required onchange="hideMessage('new_password')">
				<label>Nueva contraseña</label>
			</div>
			
			<!-- BOTÓN ACTUALIZAR -->
			<button type="submit" class="register-button container-button">ACTUALIZAR</button>
			
			<!-- MENSAJES -->
			<div id="new_passwordHelp" class="error">Contraseña no válida</div>
			 <% if (passwordMessage != null) { %>
		        <div>
		        	<p class="message"><%= passwordMessage %></p>
		        </div>
		     <% } %>
	    </form>
	    
	    <!-- CAMBIAR EMAIL -->
	    <form onsubmit="return emailValidation()" action="../email" method="post" class="login">
	    	<h1>Cambiar email</h1>
	    	<!-- NUEVO EMAIL -->
			<div class="input_container">
				<input type="text" name="email" id="email" required onchange="hideMessage('email')">
				<label>Nuevo Email</label>
			</div>
				
			<!-- CONTRASEÑA ACTUAL -->
			<div class="input_container">
				<input type="password" name="password" required>
				<label>Contraseña actual</label>
			</div>
			
			<!-- BOTÓN ACTUALIZAR -->
			<button type="submit" class="register-button container-button">ACTUALIZAR</button>
			
			<!-- MENSAJES -->
			<div id="emailHelp" class="error">Email no válido</div>
			 <% if (emailMessage != null) { %>
		        <div>
		        	<p class="message"><%= emailMessage %></p>
		        </div>
		     <% } %>
	    </form>
    </div>
    
    <form onsubmit="return confirmarBaja()" action="../account" method="post">
	    <button type="submit" id="delete-button">DAR DE BAJA</button>
	</form>
	<% } %>
	
    <script src="../scripts/datosPersonales.js"></script>
</body>
</html>