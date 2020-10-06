<%
if(session.getAttribute("uname")==null || session.getAttribute("uname")=="")
{
	response.sendRedirect("login.jsp");
}
%>
