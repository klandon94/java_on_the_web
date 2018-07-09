<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
    <!-- Optional theme --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<style>
		<%@include file="/WEB-INF/styles.css" %>
	</style>
	<title>Great Number Game</title>
</head>
<body>
	<br>
    <h1>Welcome to the Great Number Game!</h1>
    <h3>I am thinking of a number between 1 and 100</h3>
    <h3>Take a guess!</h3>
    
    <c:if test="${result.equals('missing') }">
    	<h3>Please enter a number!!</h3>
    </c:if>
    
    <c:if test="${result.equals('less') }">
        <div id='wrong' class='red'>
            <h1>Too low!</h1>
        </div>
    </c:if>
    
   	<c:if test="${result.equals('more') }">
        <div id='wrong' class='blue'>
            <h1>Too high!</h1>
        </div>
    </c:if>

    <c:if test="${result.equals('equal') }">
        <div id='right'>
            <h1>You got it! ${holy} was the number!</h1>
            <form action="/GreatNumberGame/Home">
           		<input type="hidden" name="another">
           		<button type='submit' class='btn btn-primary center-block'>Play again!</button>
            </form>
        </div>
    </c:if>
    
    <div id='button'>
        <form action = '/GreatNumberGame/Home' method='post'>
            <div class='form-group'>
                <input class='form-control' type='text' name='num' value=''>
            </div>
            <input class='btn btn-primary center-block' type='submit' value='Submit'>
        </form>
    </div>
</body>
</html>