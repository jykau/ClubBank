<%@ include file="Header.jsp" %>
<%@page import="bank.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=pink>
<%
String user=(String)session.getAttribute("UserId");
if(user==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>

<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ 
 
String result="";
String cid1=request.getParameter("cid");
double amount1=Double.parseDouble(request.getParameter("amount"));
%>

<jsp:useBean id = "account" class = "bank.Account"/>
<jsp:setProperty name = "account" property="account" value = "<%=cid1%>"/>

<jsp:setProperty name = "account" property = "amount" value = "<%=amount1 %>"/>
<%
Teller teller2=new Teller();
result=teller2.calladdaccount(account);
if(result!="")
{
%>
<center>
<h1>Your Account no. is:<%=result %><br>
And Amount is:<%=amount1 %></h1>
</h1>
<h2 align="right" style="font-family:Comic Sans Ms;color:red";font-size:32px";><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2></center>
<%
} 
else
{%><h1>
Following Error has occured:<br>
Either ID does not exist or amount is less than 500 RS.</h1>
<h2 align="right" style="font-family:Comic Sans Ms;color:red";font-size:32px";><a href="http://localhost:9080/ClubBank/CreateaccountHtml.jsp">Back</a></h2></center>
 <%
 }
}
%>

</body>
</html>