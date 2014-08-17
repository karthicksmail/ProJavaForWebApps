<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<title>Customer Support</title>
</head>
<body>
	<%@
		page import="com.wrox.karthicksmail.*"
	%>
	<%
		String ticketId = (String) request.getAttribute("ticketId");
		Ticket ticket = (Ticket) request.getAttribute("ticket");
		Boolean justCreated = (Boolean) request.getAttribute("justCreated");
	%>

	<h2>
		Ticket #<%=ticketId%>: <%= ticket.getSubject() %>
	</h2>
	<i>Customer Name - <%=ticket.getCustomerName()%></i>
	<br />
	<br />
	<%=ticket.getSubject()%>
	<br />
	<%
		if (ticket.getNumberOfAttachments() > 0) {
	%>
	<br /> Attachments:
	<%
		int i = 0;
		for (Attachment attachment : ticket.getAttachments()) {
			if (i++ > 0) {
				out.print(",");
			}
			%><a href="<c:url value="/tickets-v2">
					<c:param name="action" value="download" />
					<c:param name="ticketId" value="<%= ticketId %>" />
					<c:param name="attachment" value="<%= attachment.getName() %>" />
				</c:url>"><%= attachment.getName() %> </a> <%
		}
	%>
	<br />
	<br />
	<%
		}
	%>
	<br />
	<a href="<c:url value="/tickets-v2">
				<c:param name="action" value="list" />
			</c:url>">Return to list tickets</a>
	<br />
	<%
	if(justCreated == true) {
	%>
		<a href="<c:url value="/tickets-v2">
					<c:param name="action" value="create" />
				</c:url>">Create one more ticket</a>
		<br />
		<a href="<c:url value="/tickets-v2">
					<c:param name="action" value="create" />
					<c:param name="customerName" value="<%= ticket.getCustomerName() %>" />
				</c:url>">Create one more ticket for same user</a>
	<%
	}
	%>
</body>
</html>
