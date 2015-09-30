<%@ include file="Header.jsp" %>
<%@page import="bank.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit</title>
<style>
#tab{
width:500px;
height:300px;
position:relative;
padding:10px;
top:100px;
background-color:yellow;
box-shadow:10px 10px 25px orange;
transform:rotate(-7deg);
}
td{
font-size:40px;
color:blue;
}
h1{
text-align:center;
color:blue;
font-size:35px;
letter-spacing:7px;
width:300px;
height:40px;
padding:30px;
background-color:pink;
box-shadow:40px 30px 30px black;
transform:rotate(-7deg);
}
</style>

</head>
<body bgcolor="orange">
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>
<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ 
double result=0,amount=0;
String account=request.getParameter("accountno");
double amount1=Double.parseDouble(request.getParameter("amount"));
Teller teller3=new Teller();
result=teller3.calladddeposit(amount1,account);
if(result!=0.0)
{
%>
<center>
<h1>ClubBank</h1>
<table id=tab>
<tr><td colspan=2>Your Deposit Transaction:</td></tr>
<tr><td>Total balance :<td>
<%=result %></td></tr></table>
</h1>
<h2 align="right" style="font-family:Comic Sans Ms;color:red";font-size:32px";><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2></center>
<%} 
else
{ %>
<h2 align="center">
Following Error has occured:<br>
Invalid Account No.</h2>
</h1>
<h2 align="right" style="font-family:Comic Sans Ms;color:red";font-size:32px";><a href="http://localhost:9080/ClubBank/Deposit.html.jsp">Back</a></h2></center>
 <%
 }
%>
</body><%} %>
</html>