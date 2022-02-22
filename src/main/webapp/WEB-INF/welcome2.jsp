<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>
			Welcome, again
		</title>
		<link rel="stylesheet" type="text/css" href="/css/style2.css">
	</head>
	<body>
	    <main>
			<h1 class="blue">
				Welcome, User!
			</h1>
			<h2 class="blue">
				x2
			</h2>
			<form action="/counter" method="GET">
				<button type="submit" class="link">
					Go to counter
				</button>
			</form>
		</main>
		<script type="text/javascript" src="js/app-1.js"></script>
	</body>
</html>