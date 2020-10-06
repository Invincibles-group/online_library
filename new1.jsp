<%@ page import="java.sql.*"%>

<%@ include file="db.jsp"%>
<center>
	  <form name='f' action="selectin.jsp" method="POST"> //selectin.jsp //ordrinsrt.jsp

		<B>enter your details :
		<select name="o1name">
		<%
		String oname=request.getParameter("oname");
		int bcode=0;
		String author="";
		ResultSet rs=st.executeQuery("select * from stock");
		while(rs.next())
		{
			if(oname.equals(rs.getString("bname")))
			{
				out.println("<option value='"+rs.getString("bname")+"' selected>"+rs.getString("bname")+"</option>");
				bcode=rs.getInt("bcode");
				 author=rs.getString("author");
			}
			else
				out.println("<option value='"+rs.getString("bname")+"' >"+rs.getString("bname")+"</option>");
		}
		%>
		</select>
		<br>
		Book Code : <input type="text" name="id" size="26" value="<%=bcode%>"><br>
		Author : <input type="text" name="price" size="25" value="<%=author%>"><br>
		
		<input type="Submit" value="add ">
	  </form>
</center>
