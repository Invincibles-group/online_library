<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css/styles" media="screen" />
</head>
<body>
<div id="main">
<!-- start header -->
<div id="header">
 <div id="logo">
	<center><h1>ONLINE LIBRARY</h1>
	<h2 align=""><a href="" id="metamorph">Don't Stop Learning Stay Young</a></h2>
	</center>
  </div>
<!--Header end -->
<div id="menu">
  <ul>
   <li><a href="index.jsp">Home</a></li>
   <li><a href="registerform.jsp">New User</a></li>
   <li><a href="stock.jsp">Stock Maintainance</a></li>
   <li><a href="issue21.jsp">Issue Of Books</a></li>
   <li><a href="return1.jsp">Return Of Books</a></li>
   <li><a href="logout.jsp">Logout</a></li>   
  </ul>
</div>
</div>
<!-- end header -->
<!-- start page -->
<div id="page">
	<!-- start leftbar -->
	<div id="leftbar" class="sidebar">
			<h2>Reports</h2>
			 <div class="back">

				<ul>
					<li><a href="usereport.jsp">User Report</a></li>
					<li><a href="stockreport.jsp">Stock Report</a></li>
					<li><a href="update.jsp">Update Stock</a></li>
					<li><a href="issuereport.jsp">Issue Report</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
				</div><div class="bottom"></div>
				
				
	</div>
	<!-- end leftbar -->
	<!-- start content -->
	<div id="content">
		<div class="post">

			<h4 align="right"></h4>
    <%@ include file="loginCheck.jsp"%>

	
				
               <h2>Welcome <%=session.getAttribute("uname")%></h2>
			    
		</div>
	</div>
	<!-- end content -->
	<!-- start rightbar -->
	
				
				</div><div class="bottom"></div>
	</div>
	<!-- end rightbar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
 <div id="footer">
   <p>Copyright &copy; 2015. <a href="#"></a> | <a href="#"></a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language"></abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets"></abbr></a></p> 
	<p><a href="http://freetemplates.dezinehub.com">Site Designed</a> <a href="http://www.maadesigns.co.uk">Design</a> by <a href="http://www.metamorphozis.com/" title="Free Website Templates">Hemant,Prathyusha,Girish</a></p>

</div>
</div>
</body>
</html>
