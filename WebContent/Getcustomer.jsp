<%@ include file="Header.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserting Customer</title>
</head>

<body bgcolor=cyan>
<%
String user2=(String)session.getAttribute("UserId");
if(user2==null)
{
%>
<h3>Your session has been expired......<br>Please Login again!!!!!!</h3>

<a href="http://localhost:9080/ClubBank/Front.jsp">LOGIN</a>
<%}else{ %>
	<%  String str="";
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
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			Statement stmt3=conn2.createStatement();
			ResultSet rs=stmt3.executeQuery("select customer_seq.nextval from dual");
			while(rs.next())
			{
				str=rs.getString(1);
			}
		
			PreparedStatement stmt2 = conn2.prepareStatement("insert into Customer(cname,gender,dob,password,address,city,state,pin,telephone,email,customer_id)values(?,?,?,?,?,?,?,?,?,?,?)");
			System.out.println("Statement");
			stmt2.setString(1, cname1);
			stmt2.setString(2, gen1);
			stmt2.setString(3, dob1);
			stmt2.setString(4, pass1);
			stmt2.setString(5, address1);
			stmt2.setString(6, city1);
			stmt2.setString(7, state1);
			stmt2.setString(8, pin1);
			stmt2.setString(9, tel1);
			stmt2.setString(10, email1);
			stmt2.setString(11,str);
			stmt2.executeUpdate();
			
		
		
		rs.close();
			stmt2.close();
			conn2.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			System.out.print("finish");
		} 
	%>
<center>

<h1 style={color:red}>Welcome in ClubBank..............</h1>
	<h1>Your ID is:<%=str %>
	</h1>
	<h2 align="center"><a href="http://localhost:9080/ClubBank/Logout.jsp">Logout</a></h2>
	<h2  align=left><a href="http://localhost:9080/ClubBank/Enterlogin.jsp">Next</a></h2>
	</center>
	</body><%} %>
</html>