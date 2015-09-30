<%@ include file="Header.jsp" %>
<%@page import="bank.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entry</title>
<script type="text/javascript" src="validation.js">
</script>
<style>
label{
color:red;
}
</style>
</head>
<%String cpass=(String)session.getAttribute("Password");%>
<body bgcolor=pink onLoad="f1.name.focus()">
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>
<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ %>
<center><h1>Enter Details:</h1></center>
<form name=f1 method=post action="http://localhost:9080/ClubBank/EditJsp.jsp" >
<fieldset><legend>Personal Information:</legend><table width=45% cellspacing=4>
<tr><td>Customer Name:<td><input type=text name=name><label>(Maximum 16 characters only)</label></tr>
<tr><td>Date OF Birth:<td><select name=date>
<option>Date</option>
<%for(int i=1;i<=30;i++)
{%>
	<option value=<%=i %>><%=i %>
<%	
}
%></option></select>
<select name=month>
<option>month</option>
<%for(int i=1;i<=12;i++)
{%>
	<option value=<%=i%>><%=i %>
<%	
}
%>
</select>
<select name=year>
<option>year</option>
<%for(int i=1970;i<=2014 ;i++)
{%>
	<option value=<%=i %>><%=i %>
<%	
}
%>
</select>
</td></tr>
<tr><td>Gender<td><input type=radio name=r1 value=Male>Male<input type=radio value=Female name=r1>Female</tr>
<tr><td>Create Password:<td><input type=Password name=pass readonly=true value=<%=cpass%>><label for="cpass">(Maximum 10 characters only)</label></tr>
</table>
</fieldset>
<fieldset><legend>Address:</legend>
<table width=45% cellspacing=4>
<tr><td>Address :<td><input type="text" name=address></td></tr>
<tr><td>City :<td><input type=text name=city></td></tr>
<tr><td>State :<td><input type=text name=state></td></tr>
<tr><td>Pin number :<td><input type=text name=pin></td></tr>
<tr><td>Telephone no :<td><input type=text name=telno><label for="ctel">(Enter 10 digits only)</label></tr>
<tr><td>Email :<td><input type="text" name=email></td></tr>
</table>
</fieldset>
<table>
<tr><td align=center><input type=submit value=Submit name=submit onClick= "return check()" ><td><input type =hidden name=hidden>
</table>
<br><h2 align="right">
<a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</form>
</body>
</html>
</body><%} %>
</html>