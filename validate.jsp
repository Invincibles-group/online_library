<%@page language="java" import="java.sql.*" %>>
<%@ include file="index.jsp"%>	

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cse","root","0000");
Statement st=con.createStatement();
String uname=request.getParameter("uname");
String pword=request.getParameter("pword");
if(uname.equals("root") && pword.equals("0000"))
{
	session.setAttribute("uname",uname);
	request.getRequestDispatcher("/index.jsp").forward(request, response);
}
	else
	{
	String sql="select * from regform where uname1='"+uname+"' and pword='"+pword+"'";
	ResultSet rs=st.executeQuery(sql);
	if(rs.next())
	{
				session.setAttribute("uname",uname);
				request.getRequestDispatcher("/user1.jsp").forward(request, response);
	}
	else
	{
				request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
	}
%>

	
