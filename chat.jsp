<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript" src="js/script.js">

setTimeout('document.test.submit()',0);


</SCRIPT>
</head>
<body>

<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try{
	String user=request.getParameter("username");
	String pass=request.getParameter("password");
	String msg=request.getParameter("msg");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();
int i=s.executeUpdate("insert into chat(username,msg) values('"+user+"','"+msg+"')");

%>
<form action=usermain.jsp method=post name=test>
<table>
<tr><td><center><input type=hidden name=user value=<%=user%>></center></td></tr>
<tr><td><center><input type=hidden name=pass value=<%=pass%>></center></td></tr>
<tr><td><center><input type=submit name=next></center></td></tr>
</table>
</form>

<%



}
catch(Exception e)
{
	out.println(e);
	
}



%>



</body>
</html>