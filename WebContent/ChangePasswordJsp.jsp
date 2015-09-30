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
<%}else{
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
	try {
		String str2="";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
		System.out.println("Connected 2");
		Statement stmt3=conn2.createStatement();
		ResultSet rs=stmt3.executeQuery("select password from customer where customer_id="+user2+"");
		while(rs.next())
		{
			str2=rs.getString(1);
		}
		if(str2.equals(pass1))
		{
			
		PreparedStatement stmt2 = conn2.prepareStatement("UPDATE customer SET password=? where customer_id="+user2+"");
		System.out.println("Statement");
		stmt2.setString(1,pass2);
		stmt2.executeUpdate();
		stmt2.close();
		conn2.close();
		}
		else{	
				System.out.print("Error");
				String Message="Invalid old Password";
				response.sendRedirect("http://localhost:9080/ClubBank/ChangePassword.jsp?error="+Message);
		}
	}
	catch(Exception e)
	{
		System.out.println("Error Occur");	
		e.printStackTrace();
	}
	finally{
		System.out.println("Finished");
	}
	%>
	<h2 align=center>Successfully Changed Password</h2>
	<h2><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Back</a></h2>
</body><%} %>
</html>