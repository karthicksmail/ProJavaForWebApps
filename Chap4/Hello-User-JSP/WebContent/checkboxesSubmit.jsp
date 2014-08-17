<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String[] fruits = request.getParameterValues("fruits");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hello User Application</title>
	<head>
	<body>
		<%
		if (fruits == null) {
		%><h2>You did not choose any fruits.</h2><%
		} else {
		%>
		<h2>Your selections</h2>
		You chose: <br/>
		<ul>
		<%
			for (String fruit: fruits) {
				out.write("<li>" + fruit + "</li>");
			}
		}
		%></ul>
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
