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

String wall=request.getParameter("wall");
String tcolor=request.getParameter("tcolor");
String font=request.getParameter("font");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();


ResultSet rs;
rs=s.executeQuery("select * from user");
while(rs.next())
{
Integer id=rs.getInt(1);
String user1=rs.getString(2);	
String pass1=rs.getString(3);
String email=rs.getString(4);
String gender=rs.getString(5);
String dob=rs.getString(6);



if(user.equals(user1)&&pass.equals(pass1)){
int i=s.executeUpdate("INSERT INTO wall(user,wall,tcolor,font) VALUES('"+user+"','"+wall+"','"+tcolor+"','"+font+"')");

out.println("Record INSERTED!!! REFRESH YOUR PAGE TO APPLY CHANGES!!!");

}
else{
	out.println("INVALID USERNAME OR PASSWORD!!");
}

}
}
catch(Exception e)
{
	out.println(e);
}






%>
</body>
</html>