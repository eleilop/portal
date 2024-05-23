<%@page import="services.SchoolService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,utils.*,models.*" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="../styles/styleInicio.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
	<meta charset="UTF-8">
	<title>Inicio</title>
	
	<% User activeUser = (User) session.getAttribute("user");
	String color = "#"+SchoolService.getSchoolColor(activeUser.getSchoolId()); %>
	
	<style type="text/css">
		.divider {background-color: <%= color %>;}
	</style>
</head>

<body>
	<div class="container">
		<h2>¡Bienvenido/a <%= activeUser.getName() %>!</h2>
		<div class="divider"></div>
	</div>
</body>
</html>