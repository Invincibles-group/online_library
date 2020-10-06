<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>My World - Lehlogonolo Masubelele</title>
<link href="user1.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>

<div id="Wrapper">
<div id="Header"></div>
<div id="Menu">		
		<ul>
			<li class="active"><a href="user1.jsp">Home</a></li>
			<li><a href="search1.jsp">Search</a></li>
			<li><a href="author.jsp">Search by Author</a></li>
			<li><a href="bookreportuser.jsp">Books </a></li>
			<li><a href="myaccount.jsp">Profile</a></li>
			<li><a href="#">About Us</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
			</div><div id="ContentTop"></div>
			
<div id="Sidebar">
<ul><h2>Search Books</h2>
<li>
<ul>
	<li><a href="A-E.jsp">A-B-C-D</a></li>
	<li><a href="E-I.jsp">E-F-G-H</a></li>
	<li><a href="I-M.jsp">I-J-K-L</a></li>
	<li><a href="M-Q.jsp">M-N-O-P</a></li>
	<li><a href="Q-V.jsp">Q-R-S-T</a></li>
	<li><a href="V-Z.jsp">U-V-W-X</a></li>
	<li><a href="Y-Z">Y-Z</a></li>
</ul>
</li>

</ul>
</div>

<div id="Content"><h1>

	 <form name='f' action="search2.jsp" method="POST">
	 <table border="0.5" cellspacing="4" cellpadding="3">
	  	<tr>
	  		<td><B>Search Book Code :</td>
	  		<td>		
		<select name="bcode" onchange="f.submit();">
		<option>--SELECT--</option>
		<%
		ResultSet rs=st.executeQuery("select * from stock");
		while(rs.next())
		{
			out.println("<option value='"+rs.getString("bcode")+"'>"+rs.getString("bcode")+"</option>");
		}
		
		%>
		</select>
		</td>
		</tr>
		<tr>
			<td>Book Name : </td>
			<td><input type="text" name="bcode" size="30"><br></td>
		</tr>
		<tr>
			
			<td>Author :</td>
			<td> <input type="text" name="author" size="30"><br></td>
		
		</tr>
		<tr>
		<tr>
		<td><input type="submit" name="Submit"></td>
		<tr>
		</table>
	  </form>
	 
</h1>











</div>
</div>

<div id="Footer"><p>Copyright © 2012 My World - <a  href="#">Lehlogonolo Masubelele</a>. All Rights Reserved. | <a href="#">JazziroSoft</a> | </p></div>
</body>
</html>


		
	
