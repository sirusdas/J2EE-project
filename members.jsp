<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>members</title>
<style>

html,body{width:99.70%;height:95%;}
body{background-image:url('mem.jpg');background-position:center;color:darkred;background-size:100% ;}
a,td,I,hr{font-family:elephant;color:darkred;}
h1{font-family:elephant; font-size:60px;}
b{font-family:elephant;}
marque{color:darkred;height:20%;}
</style>
</head>

<body >

<CENTER><H1>&nbspSAN.COM</H1></CENTER>
<CENTER>&nbsp &nbsp <B>SOCIAL AND ENTERTAINMENT</B></CENTER>

<HR color=darkred>
<center>&nbsp &nbsp <u>PROUD MEMBERS OF <I>SAN.COM</I></u></center><br>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();

ResultSet rs;
rs=s.executeQuery("select user from user");
while(rs.next())
{
%>
<center><table class=chat >	<tr><th>&nbsp &nbsp &nbsp<% 
String user=rs.getString(1);	

out.println(user);
%>

</th></tr></table></center>

<% 


}




con.close();
}
catch(Exception e)
{
	out.println(e);
}




%>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><form action=profile.jsp method=post>
ENTER USERNAME NAME TO VIEW PROFILE<br><input type=tex name=user1>
<input type=submit value=VIEW>

</form></center>

<BR><br>
<MARQUEE bgcolor=darkgoldenrod><b>WELCOME TO "<I>SAN.COM</I>"!!! A WEBSITE TO CONNECT WITH YOUR FRINEDS AROUND THE GLOBE AND ENJOY MUSIC AT THE SAME TIME</b></MARQUEE>

</body>
</html>