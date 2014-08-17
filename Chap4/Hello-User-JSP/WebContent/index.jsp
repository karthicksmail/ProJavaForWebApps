<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
	private static final String DEFAULT_USER="Guest";
%>

<%
	String user = request.getParameter("user");
	if(user == null) {
		user = DEFAULT_USER;
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hello User Application using JSP</title>
	</head>
	<body>
		<h2>Hello, <%=user %>!</h2>
		<form action="index.jsp" method="POST">
			Enter your name: <br/>
			<input type="text" name="user"/> <br/>
			<input type="submit" value="Submit"/>
		</form>
	</body>
</html>
