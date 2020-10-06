<%
	session.removeAttribute("uname");
	session.invalidate();
	response.sendRedirect("login.jsp");
%>
