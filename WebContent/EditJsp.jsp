<%@include file="Header.jsp" %>
<%@ page import="bank.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
<style>
h1{
color:red;
align:center;
}
h2{
color:purple;
font-family:Comic Sans Ms;
}

</style>
</head>
<body bgcolor=cyan>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>
<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ 
		String cname1 = request.getParameter("name");
		String gen1 = request.getParameter("r1");
		String date1 = request.getParameter("date");
		String month1 = request.getParameter("month");
		String year1 = request.getParameter("year");
		String pass1 = request.getParameter("pass");
		String dob1 = date1 + "-" + month1 + "-" + year1;
		String address1 = request.getParameter("address");
		String city1 = request.getParameter("city");
		String state1 = request.getParameter("state");
		String pin1= request.getParameter("pin");
		String tel1 = request.getParameter("telno");    
		String email1 = request.getParameter("email");
	%>
	
	<jsp:useBean id = "customer" class = "bank.Customer"/>
	<jsp:setProperty name = "customer" property="name" value = "<%=cname1%>"/>

	<jsp:setProperty name = "customer" property = "gender" value = "<%=gen1 %>"/>

	<jsp:setProperty name="customer" property="datebirth"  value="<%=dob1%>" /> 
	 
	<jsp:setProperty name="customer" property="address"  value="<%=address1%>" /> 

	<jsp:setProperty name = "customer" property="city" 
	 value="<%=city1%>" /> 
	
	<jsp:setProperty name = "customer" property="state" 
	 value="<%=state1%>" /> 
	
	<jsp:setProperty name="customer" property="pin" 
	 value="<%=pin1%>" /> 
								
	<jsp:setProperty name="customer" property="telephone"
	 value="<%=tel1%>" /> 
	 							
	<jsp:setProperty name="customer" property="password"
	 value="<%=pass1%>" /> 
			
	<jsp:setProperty name="customer" property="email"
	 value="<%=email1%>" /> 
	
	
<%	
	String id=(String)session.getAttribute("UserId");
String pass=(String)session.getAttribute("Password");
	String result="";
	Teller teller1 = new Teller();
	result = teller1.calleditcustomer(customer,id);
%>
<h1>Welcome to ClubBank...<br>
<br><br>
<%=result %>
</h1>
	<h2 align="left"><a href="http://localhost:9080/ClubBank/Front.jsp">Logout</a></h2>
	<h2 align="right" style="font-family:Comic Sans Ms;color:red;font-size:32px";><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
	<%} %>
</body>
</html>