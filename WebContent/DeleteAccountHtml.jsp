<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:pink;
font-family:Comic Sans Ms;
}
td{
font-size:28px;
color:brown;
}
h1{
text-align:center;
color:blue;
font-size:35px;
letter-spacing:7px;
width:300px;
height:40px;
padding:30px;
background-color:lightgreen;
box-shadow:40px 30px 30px black;
transform:rotate(10deg);
}
#center
{
left:30%;
top:20%;
position:relative;
margin:70px
}
table{
letter-spacing:7px;
width:700px;
height:60px;
padding:30px;
top:10%;
background-color:lightgreen;
box-shadow:40px 30px 30px black;
transform:rotate(-9deg);
}
</style>
</head>
<body onLoad=document.delacc.accountno.focus()>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>

<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ %>
<h1 id=center>ClubBank</h1>
<form name=delacc method=post action="http://localhost:9080/ClubBank/DeleteAccountjsp.jsp">
<table width=50% align="center" cellspacing=4 cellpadding=4>
<tr><td width=60%>Account NO.<td width=40%><input type=text name=accountno></td></tr>
<tr><td align=center>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=submit name=submit value=Delete></td></tr>
</table>
<br><br>
<h2 align="centert" style="font-family:Comic Sans Ms;color:red;font-size:32px";><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</form>
</body>
</html>
</head>
</body><%} %>
</html>