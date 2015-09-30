<%@ page import="bank.*" %>
<%@ include file="Header.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>
<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}
else{
String result="";
String account=request.getParameter("accountno");
Teller teller4=new Teller();
result=teller4.calldeleteaccount(account);
if(result=="")
{
%>
<h2 align="center">
Following Error has occured:<br>
Invalid Account No.</h2>
 <%
 } else{
%>
	<h2><%=result %></h2>
<h2><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</body><%} }%>
</html>
