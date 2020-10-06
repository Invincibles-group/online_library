		
<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
	<div class="article">
      <h2>Update</h2>		
      <%
	 String book1=request.getParameter("book");
	 String bname1=request.getParameter("bname");
	 String author1=request.getParameter("author");
	


int ret=st.executeUpdate("update stock set bname='"+bname1+"',author='"+author1+"' where bcode='"+book1+"'");


if(ret>0)
{
	response.sendRedirect("msg1.jsp");
}
else
{
	response.sendRedirect("msg4.jsp");
}
%>
			
				
               
		
