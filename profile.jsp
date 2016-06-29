<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
html, body, table, img{ height: 100%; width: 100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; }
body{background-image:url('log.jpg');width:100%;height:100;}
.head{font-family:elephant;color:darkred; font-size:30px;background-image:url('chat.jpg')}
h1{font-family:elephant;color:darkred; font-size:40px;}
center{font-family:elephant;color:darkred; font-size:30px;}
h3{font-size:25px;}


a{color:green;}

}
.wall{background-image:url('wa.jpg');}
table{background-image:url(chat.jpg);}
</style>

</head>
<body>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
try{
String user1=request.getParameter("user1");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database1","root","");
Statement s=con.createStatement();

ResultSet rs;
rs=s.executeQuery("select * from user where user='"+user1+"'");
while(rs.next())
{
	Integer id=rs.getInt(1);
	String user2=rs.getString(2);	
	String pass1=rs.getString(3);
	String email=rs.getString(4);
	String gender=rs.getString(5);
	String dob=rs.getString(6);
%>
<div style="float:top; width:100%;height:15%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<center class=head>  <h1>  SAN.com  </h1>

<h3>USER NAME: <%=user2%> &nbsp&nbsp <a href=members.jsp>BACK</a></h3></center>

</div>	

<div style="float:top; width:100%;height:30%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:left; width:20%; height:100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<% 
rs.close();
String img="img";
String src="src";



rs=s.executeQuery("select imgp from profilepic where idp="+id+"");

while(rs.next()){
String imgp=rs.getString(1);	
	out.print("<"+img+" "+src+"="+imgp+" style='width:100%; height:100%;border:1px;'>"+"</img>");

}
rs.close();
%>

</div>				          

<div style="float:left; width:80%; height:100%; ">
<% 

rs=s.executeQuery("select imgt from timelinepic where idt="+id+"");
while(rs.next()){
String imgt=rs.getString(1);	
	out.print("<"+img+" "+src+"="+imgt+" style='width:100%; height:100%;border:1px;'>"+"</img>");

}
%>

</div> 	
		        
</div>				             

<div style="float:bottom;width:100%;height:55%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:left;width:40%;height:100%">
<table border="2">
<tr>
<th><u><center>USER INFO</center></u></th>
</tr>
<tr><td><center>EMAIL ADDRESS:<%=email%></center></td><tr>
<tr><td><center>GENDER:<%=gender%></center></td><tr>
<tr><td><center>DATE OF BIRTH:<%=dob%></center></td><tr>

</table>
</div>
<div style="float:right;width:60%;height:100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; " class=wall>
<table class=chat width=100% height=100% border="2">	
<tr><td>
<% 
rs=s.executeQuery("select * from wall where user='"+user2+"'");
while(rs.next())
{
	Integer id1=rs.getInt(1);
	String user3=rs.getString(2);	
	String wall=rs.getString(3);
	String tcolor=rs.getString(4);
	String font=rs.getString(5);
%>






<h2 style="color:<%=tcolor%>;font-family:<%=font%>;"><%=wall%></h2>	




<%
}


%></td>

</tr>
</table>
</div>

</div>


<% 
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}

%>

<










</body>
</html>