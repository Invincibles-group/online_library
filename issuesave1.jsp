 <%@ page import="java.sql.*"%>


<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cse","root","0000");
Statement st=con.createStatement();

	 String mname=request.getParameter("mname");	
	 String bcode=request.getParameter("bcode");
	 String bname=request.getParameter("bname");
	 String     doi=request.getParameter("doi");
	 String     doe=request.getParameter("doe");
	 	 
int ret=st.executeUpdate("insert into issue values('"+mname+"','"+bcode+"','"+bname+"','"+doi+"','"+doe+"')");
if(ret>0)
{
	response.sendRedirect("2.html");
}
else
{
	response.sendRedirect("1.jsp");
}
}
catch(Exception e)
{
	response.sendRedirect("1.html");
}	
%>

	
