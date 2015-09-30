<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Html</title>
<style>
body{
background-color:orange;
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
background-color:yellow;
box-shadow:10px 10px 10px black;
transform:rotate(-5deg);
}
#center
{
position:relative;
left:35%;
top:35%;
margin:70px;
}
table{
letter-spacing:7px;
width:700px;
height:60px;
padding:30px;
background-color:yellow;
box-shadow:10px 10px 10px black;
transform:rotate(-5deg);
}
</style>
</head>
<body onLoad=document.account.cid.focus()>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>

<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ %>
<h1 id=center>ClubBank</h1>
<form name=account method=post action="http://localhost:9080/ClubBank/Addaccount.jsp">
<table width=50% align="center" cellspacing=4 cellpadding=4>
<tr><td width=60%>Customer ID<td width=40%><input type=text name=cid></td></tr>
<tr><td>Amount<td><input type=text name=amount></td></tr>
<tr><td align=center>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=submit name=submit value="Create Account"></td></tr>
</table>
<h2 align="center" style="font-family:Comic Sans Ms;color:red";font-size:32px";><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</form>
</body><%} %>
</html>