<%@page import="bank.*" %>
<%@ include file="Header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enterlogin</title>
<style type="text/css">
body{
font-family:Comic Sans Ms;
font-size:30px;
}
h1{
text-align:center;
color:blue;
font-size:35px;
letter-spacing:7px;
width:900px;
height:50px;
padding:30px;
left:80%;
top:70%;
background-color:white;
box-shadow:40px 30px 30px blue;
transform:rotate(-5deg);
}
}
td{
color:red;
}
div{
text-align:right;
color:red;
font-size:20px;
}
</style>
</head>
<body bgcolor=yellow>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>

<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%} 
else{ %>
<h1 >Welcome to ClubBank ................</h1>
<div>Hello,<%=user2 %></div>
<table align=center cellspacing=4 width=60%>
<tr><td>To <b>New Account</b> <td><a href="http://localhost:9080/ClubBank/CreateaccountHtml.jsp">CreateAccount</a>
<tr><td>To  <b>Balance Enquiry</b> <td><a href="http://localhost:9080/ClubBank/EnquiryHtml.jsp">BalanceEnquiry</a>
<tr><td>To <b>Deposit</b>  <td><a href="http://localhost:9080/ClubBank/DepositHtml.jsp">Deposit</a>
<tr><td>To <b>Withdraw</b> <td><a href="http://localhost:9080/ClubBank/WithdrawHtml.jsp">WithDraw</a>
</table><br><br><br>
<table align=center cellspacing=6 width=60%>
<tr><td><a href="http://localhost:9080/ClubBank/Edit.jsp">Edit Customer</a><td><a href="http://localhost:9080/ClubBank/DeleteAccountHtml.jsp">Delete Account</a><td><a href="http://localhost:9080/ClubBank/ChangePassword.jsp">Change password</a></tr>
</table><br><br>
<h2><a href="http://localhost:9080/ClubBank/Logout.jsp">Logout</a></h2>
</body><%} %>

</html>