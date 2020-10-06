 <%@ page import="java.sql.*"%>
<%@ include file="index.jsp"%>
	
<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cse","root","0000");
Statement st=con.createStatement();
	 String fname=request.getParameter("fname");
	 String lname=request.getParameter("lname");
	 String uname1=request.getParameter("uname");
	 String pword=request.getParameter("pword");
	 String city=request.getParameter("city");
	 String phone=request.getParameter("phone");
	 	 
int ret=st.executeUpdate("insert into regform values('"+fname+"','"+lname+"','"+uname1+"','"+pword+"','"+city+"','"+phone+"')");
if(ret>0)
{
	response.sendRedirect("msg.jsp");
}
else
{
	response.sendRedirect("index.jsp");
}
}
catch(Exception e)
{
	response.sendRedirect("8.jsp");
}
	


%>	

