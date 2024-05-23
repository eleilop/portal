<%@page import="services.SchoolService"%>
<%@page import="services.CourseService"%>
<%@page import="models.Course"%>
<%@page import="utils.Util"%>
<%@page import="java.util.List"%>
<%@page import="models.Subject"%>
<%@page import="services.SubjectService"%>
<%@page import="models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="../styles/styleModulo.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<meta charset="UTF-8">
	<title></title>
	
	<% User activeUser = (User) session.getAttribute("user");
	String color = "#"+SchoolService.getSchoolColor(activeUser.getSchoolId()); %>
	
	<style type="text/css">
		th {background-color: <%= color %>;}
		#descriptionUnderline {border-bottom: solid <%= color %> 2px;}
		p {
			border-left: solid <%= color %> 3px;
			border-right: solid <%= color %> 3px;
		}
		td {text-align: center;}
	</style>
</head>

<body>
<% if (activeUser.getType().equals("02")) { %>
	<h3>Los profesores/as no tienen modulo asignado</h3> 
<% } else if (activeUser.getType().equals("03")) { %>
	<h3> Los empleados/as de Accenture no tienen modulo asignado</h3> 
<% } else {
   		Course course = CourseService.getCourseInfo(activeUser.getCourseId());
		List<Subject> subjects = SubjectService.getSubjectsByCourseId(activeUser.getCourseId()); %>
	<div class="contenedorPrincipal">
		<h2><%= course.getName() %></h2>
		
		<div id="descriptionUnderline">
			<h3 id="desTitle">Descripción</h3>
		</div>
		
		<p id="descripcion"><%= course.getDescription() %></p>  
		
		<table id="courseTable">
			<tr>
				<th>Asignatura</th>
				<th>Horas semanales</th>
				<th>Horas totales</th>
				<th>Programación didáctica</th>
			</tr>
			
			<% for (Subject subject : subjects) { %>
			<tr>
				<td><%= subject.getName() %></td>
				<td><%= subject.getWeeklyHours() %></td>
				<td><%= subject.getWeeklyHours() %></td>
				<td><a href="<%= subject.getPdf() %>">Descargar</a></td>
			</tr>
			<% } %>
		</table>
	</div>
<% } %>
</body>
</html>