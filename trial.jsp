<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>

<%

try{
	

String user=request.getParameter("user");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();



int i=s.executeUpdate("INSERT INTO user(user,pass,email,gender,dob) VALUES('"+user+"','"+pass+"','"+email+"','"+gender+"','"+dob+"')");
out.println("Record inserted");

response.sendRedirect("index.jsp");

}
catch(Exception e)
{
	out.println(e);
}






%>
</body>
</html>