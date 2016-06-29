<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{background-image:url(walluser.jpg);}

</style>
</head>

<body >
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();

ResultSet rs;
rs=s.executeQuery("select * from wall order by idw DESC");
while(rs.next())
{
	Integer id=rs.getInt(1);
	String user=rs.getString(2);	
	String wall=rs.getString(3);
	String tcolor=rs.getString(4);
	String font=rs.getString(5);

%>
<table class=chat width=100% height=100%>	<tr>
<h2 style="color:<%=tcolor%>;font-family:<%=font%>;">&nbsp<u><%=user%></u>:</h2>	
</tr>
<tr>
<h2 style="color:<%=tcolor%>;font-family:<%=font%>;"><%=wall%></h2>	
</tr>



</table>
<hr>
<% 

response.setHeader("REFRESH", "5");
}




con.close();
}
catch(Exception e)
{
	out.println(e);
}



%>
</body>
</html>