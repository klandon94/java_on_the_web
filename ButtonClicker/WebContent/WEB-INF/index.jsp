<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Button clicker counter</title>
</head>
<body>
	<h1>You have clicked the button <c:out value="${count}"/> times</h1>
	<form action="/ButtonClicker/Counter">
		<button type='submit'>Click Me!</button>
	</form>
	<form action="/ButtonClicker/Counter">
		<input type="hidden" name="reset" value='reset'>
		<button type='submit'>Reset</button>
	</form>
</body>
</html>