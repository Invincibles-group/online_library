<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
	<div class="article">
	
	<%
	
		String book=request.getParameter("bcode");
		int ret=st.executeUpdate("delete from issue where bcode='"+book+"'");
		if(ret>0)
		{
			response.sendRedirect("returnsuccess.jsp");
		}
		else
		{
				out.println("<h1> Returned not Successfully.</h1>");
		}
		
		%>
	
			</div>
			
		</div>
		
	
