<%@ page session="false" import="com.wrox.karthicksmail.*, java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Support</title>
</head>
<body>
	<h2>Tickets</h2>
	<%
		Map<Integer, Ticket> ticketDatabase = (Map<Integer, Ticket>) request.getAttribute("ticketDataBase");
	%>
	<a href="<c:url value="/tickets-v2">
			<c:param name="action" value="create" /></c:url>">Create Ticket</a>
	<br />
	<%
		if (ticketDatabase.size() == 0) {
		%>
			<br /><i>There are no tickets in the system</i><br />
		<%
		} else {
			for (int id: ticketDatabase.keySet()) {
				String ticketId = Integer.toString(id);
			%>
				<br /> Ticket #<%= ticketId %>:
				<a href="<c:url value="/tickets-v2">
					<c:param name="action" value="view" />
					<c:param name="ticketId" value="<%= ticketId %>" />
					</c:url>"><%= ticketDatabase.get(id).getSubject() %>
				</a>
				(Customer Name: <%= ticketDatabase.get(id).getCustomerName() %>)
				<br />
			<%
			}
		}
	%>
	<br />
</body>
</html>
