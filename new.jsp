<%@ page import="java.sql.*"%>

<%@ include file="db.jsp"%>
<center>
	  <form name='f' action="new1.jsp" method="POST">

		<B>Select name u would like to order :</B><br>
		<select name="oname" onchange="f.submit();">
		<option>--SELECT--</option>
		<%
		ResultSet rs=st.executeQuery("select * from stock");
		while(rs.next())
		{
			out.println("<option value='"+rs.getString("bname")+"'>"+rs.getString("bname")+"</option>");
		}
		%>
		</select>
		<br>
		<pre>
		price      : <input type="text" name="bcode" size="30"><br>
		no.of items : <input type="text" name="author" size="30"><br>
		<input type="Submit" value="add">
		</pre>
	  </form>
	
</center>
