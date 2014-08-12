<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<%!
	private final int five = 0;

	protected String cowboy = "rodeo";

	//cowboy = "test";

	public long addFive(long number) {
		return number + 5L;
	}

	public class MyInnerClass {

	}

	MyInnerClass instanceVariable = new MyInnerClass();

	//WierdClassWithinMethod bad = new WierdClassWithinMethod();
%>

<%
	class WierdClassWithinMethod {
	}

	WierdClassWithinMethod wierdClass = new WierdClassWithinMethod();
	MyInnerClass innerClass = new MyInnerClass();
	int seven;
	seven = 7;

%>

<!--  Note that DOCTYPE and the rest of HTML syntax is not necessary to print these values -->
<%= "Hello World" %> <br/>
<%= addFive(12L) %>
<%
	// Type 1 comment - Java line comment - will be present in the translated code.
	/* Type 2 comment - Java block comment - will be present in the translated code. */
%>
<!-- Type 3 comment - XML/HTML comment - will be present and evaluated in the translated code. This is the only comment
that can be viewed in your page's source. -->
<%-- Type 4 comment - JSP comment - will not be present in the translated code or even evaluated during translation. 
Useful for commenting out code --%>
