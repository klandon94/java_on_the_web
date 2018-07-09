<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Checkerboard JSP</title>
	<style>
		#check{
			margin: 0px auto;
		}
		.board{
            height:50px;
            width:50px;
            border:1px solid black;
        }
        .board1{
            background-color:red;
        }
        .board2{
            background-color:black;
        }
        .row{
            display:flex;
        }
        h1{
        	text-align:center;
        }
	</style>
</head>
<body>

	<% String wid = request.getParameter("width"); %>
	<% String hgt = request.getParameter("height"); %>
	
	<% if (wid == null || hgt == null){ %>
	<h1>Please enter both parameters!</h1>
	<%} else {%>
	
	<% Integer width = Integer.parseInt(request.getParameter("width")); %>
	<% Integer height = Integer.parseInt(request.getParameter("height")); %>
	
	<h1>Checkerboard: <%= width %>w by <%= height %>h</h1>
	
	<div id='check'>
	<% for (int x = 0; x < height; x++){ %>
	<div class='row'>
		<% for (int y = 0; y < width; y++) { %>
			<% if (y%2 - x%2 == 0){ %>
				<div class='board board1'></div>
			<% } else { %>
				<div class='board board2'></div>
			<%} %>
		<%} %>
	</div>
	<% } %>
	</div>
	
	<%} %>
	
</body>
</html>