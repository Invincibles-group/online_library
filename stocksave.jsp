<%@ page import="java.sql.*"%>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cse","root","0000");
Statement st=con.createStatement();
	String bname=request.getParameter("bname");
	 String bcode=request.getParameter("bcode");
	 String author=request.getParameter("author");
	
	 	 
int ret=st.executeUpdate("insert into stock values('"+bname+"','"+bcode+"','"+author+"')");
if(ret>0)
{
	response.sendRedirect("9.jsp");
}
else
{
	response.sendRedirect("index.jsp");
}	
}
catch(Exception e)
{
	response.sendRedirect("7.jsp");
}
%>	

