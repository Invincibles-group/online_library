
<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>My World - Lehlogonolo Masubelele</title>
<link href="user1.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<form>
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
</div>

<center><h2> BOOKS PROFILE</h2></center>
</div>
</div><br><br><br>

<%@ page import="java.sql.*"%>
<%@ include file="db.jsp"%>
<center>
	<table>
		<tr>
			<td  style="height: 1px">
			<table border='1' width='100%'>
			 <TR><TH colspan='5'>ACCOUNT DETAILS</TR>
				<th>BOOK CODE
				<th>BOOK NAME
				<th>DATE OF ISSUE
				<th>DATE OF EXPIRY
				</tr>
			
			<%
				String name=(String)session.getAttribute("uname");
				ResultSet rs=st.executeQuery("select *from issue");
				while(rs.next())
				{
					if(rs.getString("mname").equals(name))
					{
					out.println("<tr><td>"+rs.getString("bcode")+
									"<td>"+rs.getString("bname")+
									"<td>"+rs.getString("doi")+
									"<td>"+rs.getString("doe")+
				
										
								"</tr>");
					}
					
				}	
			%>
		
			</table>
			</td>
		</tr>
	</table>
</center>



		</body>
</html>
