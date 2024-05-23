<%@page import="services.SchoolService"%>
<%@page import="utils.Util"%>
<%@page import="services.NewsService"%>
<%@page import="models.News"%>
<%@ page import="models.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="../styles/styleNoticias.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<% User activeUser = (User) request.getSession().getAttribute("user");
	News news = NewsService.getNewsBySchoolId(activeUser.getSchoolId());
	String color = "#"+SchoolService.getSchoolColor(activeUser.getSchoolId()); %>
	
	<style type="text/css">
		.cont {
		    color: <%= color %>;
		    box-shadow: 21px 23px 0 -5px <%= color %>;
		}
		img {
		    border: <%= color %> 2px solid;
		}
		.linea hr {
		    color: <%= color %>;
		    background-color: <%= color %>;
		}
	</style>
</head>

<body>
	<div class="cont">
		<h1><%= news.getTitle() %></h1>
		<h3><%= news.getSubtitle() %></h3>
		
		<div class="imagen">
			<img alt="Clasificados" src="<%= news.getImage() %>">
			<div class="caption"><%= news.getImageFooter() %></div> 
		</div>
		
		<div class="linea">
			<hr>
		</div>
		
		<div class="desarrollo">	
			<%= news.getDescription() %>
		</div>
	</div>
	
	<script type="text/javascript" src="../scripts/script.js"></script>
</body>
</html>