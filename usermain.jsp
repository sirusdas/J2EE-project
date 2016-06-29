<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>usermain</title>
<style>
html,body{width:99.70%;height:95%;}
  html, body, table, img{ margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; }
td{color:darkred;}
th{color:darkred;}
a,h4,h3, h5{color:darkred;}
.audio{background-image:url('audio.jpg');background-size:100% 100%;width:100%;height:100%;}
.video{background-image:url('video.jpg');background-size:100% 100%;width:100%;height:100%;}
body{background-image:url('chat.jpg');background-size:100% 100%;}
h2{font-size:40px;}
h1{font-family:forte;color:darkred; font-size:35px;}
h5{align:left;font-size:15px;}
a{align:right;}
.head{font-family:elephant;color:darkred; font-size:30px;background-image:url('header.jpg');background-size:100% 100%;}
a{text-decoration:none;}
</style>

</head>
<body>

<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
try{
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
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

	
%>


<div style="float:left; width:80%;height:100%; margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:top; width:100%;height:15%; margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; " class=head>

<center >  <h1>  SAN.com  </h1>

<h5>LOGGED IN AS: <%=user1%> &nbsp&nbsp&nbsp
<a href=login.jsp>LOGOUT</a>&nbsp&nbsp&nbsp<a href=edit.jsp target="_blank">WRITE ON WALL</a>&nbsp&nbsp&nbsp<A href=members.jsp target="_blank">MEMBERS OF SAN.COM</a></h5>
</center>
</div>			                          

<div style="float:top; width:100%;height:20%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:left; width:20%; height:100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<% 
rs.close();
String img="img";
String src="src";



rs=s.executeQuery("select imgp from profilepic where idp="+id+"");

while(rs.next()){
String imgp=rs.getString(1);	
	out.print("<"+img+" "+src+"="+imgp+" style='width:100%; height:100%;'>"+"</img>");

}
rs.close();
%>

</div>				          

<div style="float:left; width:80%; height:100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;  ">
<% 

rs=s.executeQuery("select imgt from timelinepic where idt="+id+"");
while(rs.next()){
String imgt=rs.getString(1);	
	out.print("<"+img+" "+src+"="+imgt+" style='width:100%; height:100%;'>"+"</img>");

}
%>

</div> 	
		        
</div>				             

<div style="float:bottom; width:100%;height:65%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;  ">

<div style="float:left; width:40%; height:100%; margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:top; width:100%; height:50%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<table cellpadding="1" width=100%  height=100%  cellspacing="1" border="0"  class=audio>
<tr>
<th colspan="3"><center>&nbsp;<u>AUDIO</u>&nbsp;</center></th>
</tr>


<tr>
<td colspan="3"><a href="ASLONGASYOU.html" target="player"><center>&nbsp;AS LONG AS 

YOU&nbsp;</center></a></td>
</tr>


<tr>
<td colspan="3"><a href="Crawing.html" target="player"><center>&nbsp;<b>CrawLing</b>&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="BelieveMe.html" target="player"><center>&nbsp;Believe Me&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="YoungGirls.html" target="player"><center>&nbsp;Young Girls&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="IDontKnow.html" target="player"><center>&nbsp;I Dont Know&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="wishiwasyourlover.html" target="player"><center>&nbsp;wish i was your lover&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="littlegirl.html" target="player"><center>&nbsp;little girl&nbsp;</center></td>
</tr>

<tr>
<td colspan="3"><a href="Forgotten.html" target="player"><center>&nbsp;Forgotten&nbsp;</center></td>
</tr>
</table>
</div>



<div style="float:bottom; width:100%; height:50%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<table cellpadding="1" width=100%  height=100%  cellspacing="1" border="0" class=video>
<tr>
<th colspan="3"><center>&nbsp;<u>VIDEOS</u>&nbsp;</center></th>
</tr>


<tr>
<td colspan="3"><a href="vid1.html" target=_blank class=vid><center>&nbsp;HALO-BEYOUNCE&nbsp;</center></a></td>
</tr>


<tr>
<td colspan="3"><a href="vid2.html" target=_blank class=vid><center>&nbsp;WAKE ME UP-AVICII&nbsp;</center></a></td>
</tr>

<tr>
<td colspan="3"><a href="vid3.html" target=_blank class=vid><center>&nbsp;DARK HORSE-KATY PERRY&nbsp;</center></a></td>
</tr>

<tr>
<td colspan="3"><a href="vid4.html" target=_blank class=vid><center>&nbsp;HEY BROTHER-AVICII&nbsp;</center></a></td>
</tr>

<tr>
<td colspan="3"><a href="vid5.html" target=_blank class=vid><center>&nbsp;CATALYST-LINKIN PARk&nbsp;</center></a></td>
</tr> 

<tr>
<td colspan="3"><a href="vid6.html"target=_blank class=vid><center>&nbsp;UNCONDITIONALLY-KATY PERRY&nbsp;</center></a></td>
</tr>


</table>
</div>


</div>					

<div style="float:right; width:60%; height:100%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<div style="float:top;width:100%;height:90%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<iframe src=walldata.jsp style="width:100% ;height:100%"></iframe>
	
</div>
<div style="float:top;width:100%;height:9.5%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">
<iframe name=player style="width:100%;height:95%;"></iframe>
</div>




</div>					



</div>					


</div>


<div style="float:right; width:20%;height:80%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px; ">

<form action="chat.jsp" method=post>
<table width=100% height=100%>
<tr><th><h3>SAN'S CHAT</h3></th></tr>
<tr><td><center><input type=hidden name=username value=<%=user1%>></center></td></tr>
<tr><td><center><input type=hidden name=password value=<%=pass1%>></center></td></tr>
<tr><td><center><input type=text name=msg></center></td></tr>
<tr><td><center><input type=submit value="SEND MESSAGE"></center></td></tr>

</table>

</form>


<br>
<iframe src=chatmsg.jsp width=100% height=98% name=msg></iframe>
</div>		
		
<%
}

}
con.close();
rs.close();
}
catch(Exception e)
{
out.print(e);
}
  


%>

</body>
</html>