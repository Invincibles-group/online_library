<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cse","root","0000");
Statement st=con.createStatement();
%>
