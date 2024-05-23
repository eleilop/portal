<%@page import="services.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,utils.*,models.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="../styles/styleCentro.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<link rel="icon" type="image/x-icon" href="./images/accFavicon.jpg">
	<meta charset="UTF-8">
	<title>Portal - Inicio</title>
	
	<% User activeUser = (User) session.getAttribute("user");
	School school = SchoolService.getInfoSchool(activeUser.getSchoolId());
	String color = "#"+school.getColor();
	String image = "." + school.getImage();
	String mapLink = school.getMapLink(); %>
	
	<style type="text/css">
		h4 {
			background-color: <%= color %>;
			box-shadow: 0px 3px 5px 0px <%= color %>;
		}
	</style>
</head>

<body>
	<div class="contenedorPrincipal">
		<div class="headerContenedor">
			<h2 id="schoolTitle"><%= school.getName() %></h2>
			<img src=<%= image %>>
		</div>
		<h4>Informacion de contacto</h4>
		<table>
			<tr>
				<th>Número de teléfono:</th>
				<th class="tableContent"><%= school.getTlf() %></th>
			</tr>
				
			<tr>
				<th>Email:</th>
				<th class="tableContent"><%= school.getEmail() %></th>
			</tr>
				
			<tr>
				<th>Horarios de Secretaría:</th>
				<th class="tableContent"><%= school.getSchedule() %></th>
			</tr>
				
			<tr>
				<th>Municipio:</th>
				<th class="tableContent"><%= school.getLocation() %></th>
			</tr>
		</table>
			
		<h4>¿Cómo llegar?</h4>
		<iframe src=<%=mapLink%> class="mapaEscuela" width="1000" height="500" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
</body>
</html>