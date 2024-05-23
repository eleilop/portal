<%@page import="services.CourseService"%>
<%@page import="services.SchoolService"%>
<%@page import="java.util.concurrent.ScheduledFuture"%>
<%@ page import="models.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,utils.*,models.*" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="./styles/style.css" rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
		rel="stylesheet">
	<link rel="icon" type="image/x-icon" href="./images/accFavicon.jpg">
	<meta charset="UTF-8">
	<title>Portal - Inicio</title>
	
	<% User activeUser = (User) request.getSession().getAttribute("user");
		String color = "";
		Integer schoolId = null;
		String image = "";
		School school = null;
		String tagContent = "";
		String courseName = "";
		Course course = null;
		String centerName = "";
	
		if (session.getAttribute("user") == null ){
			response.sendRedirect("./jsp/login.jsp");
			return;
		} else {
			schoolId = activeUser.getSchoolId();
			school = SchoolService.getInfoSchool(schoolId);
			if (activeUser.getCourseId() != null)
				course = CourseService.getCourseInfo(activeUser.getCourseId());
			if (school != null) {
				color = "#"+school.getColor();
				centerName = school.getName();
				image = school.getImage();
			} else {
				centerName = "Accenture";
				color = "#A100FF";
				image = "./images/logos/LOGOTIPO-ACCENTURE.png";
			}
			tagContent = Util.getContentTarjetaIndex(activeUser, centerName, course);
		} %>
	
	<style type="text/css">
		header{border-color: <%= color %>;}
		.tarjetaAlumno p {color: <%= color %>;}
		.menu {
			background-color: white;
			color: <%= color %>;
		}
		.menuOpcion:hover svg path {fill: white;}
		.menuOpcion:hover {
		    box-sizing: border-box;
		    background-color: <%= color %>;
		    color: white;
		}
		.cerrarSesion input {background-color: <%= color %>;}
		.menuOpcion svg path {fill: <%= color %>;}
		.cerrarSesion input:hover{background-color: red;}
		.selected {background-color: <%= color %>;}
		.selected svg path {fill: white;}
	</style>
</head>

<body>
	<header>
		<div class="imagenNombreCentro">
			<img src=<%= image %> alt="imagenCentro" style="height: 10vh">
			<h1><%= centerName %></h1>
		</div>
		<div class="tarjetaAlumno">
			<div class="nombreCurso">
				<p><%= activeUser.getName() %></p>
				<p><%= tagContent %></p>
			</div>
			<img src="./images/imageUser.png" alt="imagenAlumno">
		</div>
	</header>

	<div class="contenedor">
		<article class="menu">
			<div class="menuOpciones">
				<% if(activeUser != null && (activeUser.getType().equals("01") || activeUser.getType().equals("02"))) { %>
				<div class="menuOpcion" id="0" onclick="cambiarContenido('jsp/noticias.jsp', id)">
       				<svg xmlns="http://www.w3.org/2000/svg" width="125" height="125" viewBox="0 0 24 24">
          				<path fill="#a100ff" d="M18.75 20H5.25a3.25 3.25 0 0 1-3.245-3.066L2 16.75V6.25a2.25 2.25 0 0 1 2.096-2.245L4.25 4h12.5a2.25 2.25 0 0 1 2.245 2.096L19 6.25V7h.75a2.25 2.25 0 0 1 2.245 2.096L22 9.25v7.5a3.25 3.25 0 0 1-3.066 3.245zH5.25zm-13.5-1.5h13.5a1.75 1.75 0 0 0 1.744-1.607l.006-.143v-7.5a.75.75 0 0 0-.648-.743L19.75 8.5H19v7.75a.75.75 0 0 1-.648.743L18.25 17a.75.75 0 0 1-.743-.648l-.007-.102v-10a.75.75 0 0 0-.648-.743L16.75 5.5H4.25a.75.75 0 0 0-.743.648L3.5 6.25v10.5a1.75 1.75 0 0 0 1.606 1.744zh13.5zm6.996-4h3.006a.75.75 0 0 1 .102 1.493l-.102.007h-3.006a.75.75 0 0 1-.102-1.493zh3.006zm-3.003-3.495a.75.75 0 0 1 .75.75v3.495a.75.75 0 0 1-.75.75H5.748a.75.75 0 0 1-.75-.75v-3.495a.75.75 0 0 1 .75-.75zm-.75 1.5H6.498V14.5h1.995zm3.753-1.5h3.006a.75.75 0 0 1 .102 1.493l-.102.007h-3.006a.75.75 0 0 1-.102-1.494zh3.006zM5.748 7.502h9.504a.75.75 0 0 1 .102 1.494l-.102.006H5.748a.75.75 0 0 1-.102-1.493zh9.504z"></path>
          			</svg>
       				<p>Noticias</p>
    			</div>
    			
			    <div class="menuOpcion" id="1" onclick="cambiarContenido('jsp/centro.jsp', id)">
			    	<svg xmlns="http://www.w3.org/2000/svg" width="125" height="125" viewBox="0 0 24 24">
			        	<path fill="#a100ff" d="M21 10h-2V4h1V2H4v2h1v6H3a1 1 0 0 0-1 1v9h20v-9a1 1 0 0 0-1-1m-7 8v-4h-4v4H7V4h10v14z"></path>
			        	<path fill="#a100ff" d="M9 6h2v2H9zm4 0h2v2h-2zm-4 4h2v2H9zm4 0h2v2h-2z"></path>
			    	</svg>
			    	<p>Centro</p>
			    </div>
			    
			    <% if(!activeUser.getType().equals("02")) { %>
			    <div class="menuOpcion" id="2" onclick="cambiarContenido('jsp/modulo.jsp', id)">
			    	<svg xmlns="http://www.w3.org/2000/svg" width="125" height="125" viewBox="0 0 24 24">
			        	<path fill="#a100ff" d="M7.5 22q-1.45 0-2.475-1.025T4 18.5v-13q0-1.45 1.025-2.475T7.5 2H20v15q-.625 0-1.062.438T18.5 18.5q0 .625.438 1.063T20 20v2zM6 15.325q.35-.175.725-.25T7.5 15H8V4h-.5q-.625 0-1.062.438T6 5.5zM10 15h8V4h-8zm-4 .325V4zM7.5 20h9.325q-.15-.35-.237-.712T16.5 18.5q0-.4.075-.775t.25-.725H7.5q-.65 0-1.075.438T6 18.5q0 .65.425 1.075T7.5 20"></path>
			        </svg>
			    	<p>Módulo</p>
			    </div>
			    <% } %>
			    <% } %>
			    
			    <div class="menuOpcion" id="5" onclick="cambiarContenido('jsp/datosPersonales.jsp', id)">
			    	<svg xmlns="http://www.w3.org/2000/svg" width="125" height="125" viewBox="0 0 24 24">
			        	<path fill="#a100ff" d="M22 3H2c-1.09.04-1.96.91-2 2v14c.04 1.09.91 1.96 2 2h20c1.09-.04 1.96-.91 2-2V5a2.074 2.074 0 0 0-2-2m0 16H2V5h20zm-8-2v-1.25c0-1.66-3.34-2.5-5-2.5c-1.66 0-5 .84-5 2.5V17zM9 7a2.5 2.5 0 0 0-2.5 2.5A2.5 2.5 0 0 0 9 12a2.5 2.5 0 0 0 2.5-2.5A2.5 2.5 0 0 0 9 7m5 0v1h6V7zm0 2v1h6V9zm0 2v1h4v-1z"></path>
			    	</svg>
			    	<p>Datos Personales</p>
			    </div>
			</div>
			
			<div class="cerrarSesion">
				<form action="./logout" method="POST">
					<input type="submit" value="Cerrar Sesión">
				</form>
			</div>
		</article>
		
		<div class="contenedorPrincipal">
			<iframe id="contenido" src="./jsp/inicio.jsp" width="100%" height="100%"></iframe>
		</div>
	</div>

	<footer>
		<p>Aplicación creada por <strong>Grupo La Rubia & co</strong></p>
		<img src="./images/logoAccentureBlanco.png" alt="logoAccenture" style="width: 8vw">
	</footer>
	
	<script type="text/javascript" src="./scripts/script.js"></script>
</body>
</html>