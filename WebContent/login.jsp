<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
 <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% try{			
			String pass1="",name1="";
			String user=request.getParameter("Userid");
			String passs=request.getParameter("pass");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			PreparedStatement stmt3=conn2.prepareStatement("select password,cname from customer where customer_id=?");
			stmt3.setString(1,user);
			
			ResultSet rs=stmt3.executeQuery();
			System.out.println("Statement");
			while(rs.next())
				{
				 pass1=rs.getString(1);
				 name1=rs.getString(2);
				}

				if(pass1==null||pass1=="")	
				{
					System.out.println("Invalid UserId OR Password");%>
						<jsp:forward page="Front.jsp"></jsp:forward>
					
					
				<% }
					else if(pass1.equals(passs))
					{
						session.setAttribute("UserId", user);
						session.setAttribute("Password",passs);
					%>
						<jsp:forward page="Enterlogin.jsp"></jsp:forward>
				<%  }
					else{
						String message="Invalid Password";
						response.sendRedirect("http://localhost:9080/ClubBank/Front.jsp?error="+message);
				%>
				
				<% }
				rs.close();
				stmt3.close();
				conn2.close();
}
catch(Exception e)
{
	e.printStackTrace();
}finally{
	
	System.out.println("finished");
}
			
%>
<h1></h1>
</body>
</html>