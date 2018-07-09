<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Make a pet</title>
	<style>
		#container{
			display:flex;
			justify-content:space-around;
			width:80%;
		}
		.block{
			border: 2px solid black;
		}
	</style>
</head>
<body>
	<div id='container'>
		<div class='block'>
			<h1>Make Dog</h1>
			<form action='/Pets/Dogs'>
				<label for="name">Name:</label>
				<input type='text' name='name'>
				<label for="breed">Breed:</label>
				<input type='text' name='breed'>
				<label for='name'>Weight:</label>
				<input type='text' name='weight'>
				<input type='submit'>
			</form>
		</div>
		
		<div class='block'>
			<h1>Make Cat</h1>
			<form action='/Pets/Cats'>
				<label for="name">Name:</label>
				<input type='text' name='name'>
				<label for="breed">Breed:</label>
				<input type='text' name='breed'>
				<label for='name'>Weight:</label>
				<input type='text' name='weight'>
				<input type='submit'>
			</form>
		</div>
	
	</div>
</body>
</html>