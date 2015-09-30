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
session.removeAttribute("UserId");
session.removeAttribute("Password");
session.invalidate();
out.println("You have successfully Logout");
response.sendRedirect("http://localhost:9080/ClubBank/Front.jsp");%>
<H1 align="center">You have Successfully LogOUt.........</H1>
</body>
</html>