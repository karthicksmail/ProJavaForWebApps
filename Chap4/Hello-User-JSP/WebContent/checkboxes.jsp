<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Fruit Options</title>
	<head>
	<body>
		<h2>Your options</h2>
		<form action="checkboxesSubmit.jsp" method="POST">
			Select from the fruits you like to eat:<br/>
			<input type="checkbox" name="fruits" value="Banana">Banana</input><br/>
			<input type="checkbox" name="fruits" value="Apple">Apple</input><br/>
			<input type="checkbox" name="fruits" value="Orange">Orange</input><br/>
			<input type="checkbox" name="fruits" value="Guava">Guava</input><br/>
			<input type="checkbox" name="fruits" value="Kiwi">Kiwi</input><br/>
			<input type="submit" value="Submit"/><br/>
		</form>
	</body>
</html>
