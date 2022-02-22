<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>
			Current visit count
		</title>
		<link rel="stylesheet" type="text/css" href="/css/style2.css">
	</head>
	<body>
	    <main>
			<p>
				You have visited <span>http://localhost:8080/</span> <c:out value="${counter}"/> times.
			</p>
			<form action="/" method="GET">
				<button type="submit" class="link">
					Test another visit?
				</button>
			</form>
			<form action="/x2" method="GET">
				<button type="submit" class="link">
					Test another two visits?
				</button>
			</form>
			<form action="logout" method="GET">
				<button type="submit" class="logout">
					Restart
				</button>
			</form>
		</main>
		<script type="text/javascript" src="js/app-1.js"></script>
	</body>
</html>