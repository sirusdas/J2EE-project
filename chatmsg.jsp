<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{color:orange;background-image:url(chat2.jpg);}

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
rs=s.executeQuery("select * from chat");
while(rs.next())
{
%>
<table class=chat width=100% height=100%>	<tr><% 
String user=rs.getString(1);	
String msg=rs.getString(2);
out.println(user+":"+msg);
%>

</tr></table>

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