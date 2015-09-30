<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<style>
body{
font-family:Comic Sans Ms;
color:blue;
}
table{
width:400px;
height:300px;
position:relative;
top:100px;
padding:30px;
background-color:cyan;
box-shadow:20px 20px 20px white inset;
}
</style>
<script>
function check()
{
	var newpass=document.f2.pass2.value;
	var conpass=document.f2.pass3.value;
	if(newpass==conpass)
		{
			return true;	
		}
	else{
		alert("New and Confirm PAssword didnot match");
		document.f2.pass2.focus();
		document.f2.pass2.select();
		return false;
	}
}
</script>
</head>
<body bgcolor=grey onLoad=document.f2.pass1.focus()>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>
<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ 
String errorm=request.getParameter("error");
if (errorm==null || errorm=="null")
{
	errorm="";
}
%>
<h1 align=center>  ClubBank.......</h1>
<form name=f2 method=post action="http://localhost:9080/ClubBank/ChangePasswordJsp.jsp">
<table align=center cellspacing=10 cellpading=10>
<caption><font size=3 color=red><%=errorm %></font></caption>
<tr><td>Old Password:<td><input type=text name=pass1 ></td></tr>
<tr><td>New Password:<td><input type=text name=pass2 ></td></tr>
<tr><td>Confirm Password:<td><input type=text name=pass3 ></td></tr>
<tr><td colspan=2>&nbsp&nbsp&nbsp<input type="submit" value=Submit name=submit onClick="return check()">
</table>
</form>
<h2 align="center" style="color:black"><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</body><%} %>
</html>