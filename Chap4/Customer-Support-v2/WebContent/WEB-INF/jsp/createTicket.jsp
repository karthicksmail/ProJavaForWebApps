<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<title>Customer Support</title>
</head>
<body>
	<h2>Create a Ticket</h2>
	<%
		String customerName = (String)request.getAttribute("customerName");
	%>
	<form method="POST" action="tickets-v2" enctype="multipart/form-data">
		<input type="hidden" name="action" value="create" />
		Your Name<br /> <input type="text" name="customerName" value="${customerName}" /><br /> <br />
		Subject<br /> <input type="text" name="subject" /><br /> <br />
		Body<br /> <textarea name="body" rows="5" cols="30"></textarea><br /> <br />
		Attachments<br /> <input type="file" name="file1" /><br /> <br />
		<input type="submit" value="Submit" />
	</form>
</body>
</html>
