<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Front page</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(function(){
$("#head").hover(function(){
	$(this).css("background-color","red");
	},
	function(){
		$(this).css("background-color","yellow");
	}),
	$("#head").click(function(){
		$(this).animate({fontSize:'em'},"slow");
	});
});
</script>
<style>
body {
	background-color:white;
	background-image: url("F://00_WORKSPACE/Background.jpg");
}

header {
	width: 1419px;
	position:relative;
	left:13%;
	background-color:tarnsparent;
}

footer {
	width: 1419px;
	position:relative;
	left:13%;
	background:transparent;
}

#sec {
	width: 1419px;
	position:relative;
	left:13%;
	background:transparent;
	letter-sapcing: 3px;
	text-align: center;
	color:black;
}

h1 {
	text-align: center;
	font-family:Comic Sans Ms;
	color: darkred;
	letter-spacing: 5px;
	position:relative;
	width:500px;
	height:30px;
	padding:20px;
	left:29%;
	top:20%;
	background-color:yellow;
	box-shadow:5px 5px 5px orange inset;
}

nav {
	letter-spacing: 3px;
}

a:link {
	color: red;
}

a:visited {
	color: blue;
}

a:hover {
	color: hotpink;
}

a:active {
	color: green;
}
#marq1{
	color: red;
	font-size:25px;
}
marquee{
color:red;
}

table{
width:1000px;
height:30px;
position:relative;
left:20%;
padding:8px;
background-color:yellow;
box-shadow:50px 50px 50px orange;
}
#box1{
width:20px;
position:relative;
text-align:center;
left:5px;
padding:8px;
background-color:yellow;
box-shadow:10px 10px 10px 10px orange inset;
}
#box2{
position:relative;
text-align:center;
left:2px;
background-color:yellow;
box-shadow:10px 10px 10px 10px  orange inset ;
}
#box3{
width:10px;
position:relative;
text-align:center;
left:5px;
padding:8px;
background-color:yellow;
box-shadow:10px 10px 10px 10px orange inset;
}
td {
	color: blue;
	font-size: 16px;
	font-family: verdana;
	width:50%;
	
}
</style>
<script>
var c=document.getElementById("mycanvas");
var club=c.getContext("2d");
club.fillStyle="red";
club.font="20px Comic Sans Ms";
club.fillText("C",50,50);

</script>
</head>
<body>
<%String errormessage=request.getParameter("error");
if(errormessage==null || errormessage=="null")
{
	errormessage="";
}
%>
	<header>
	<h1 id=head>Welcome to CLUB BANK</h1>
	</header>
	<br>
	<nav> 
	<b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<a href="Entry.jsp">Register new account</a>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<a href="">More New Information</a>
	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<a href="">New Policy</a>
	</b>
	<br>
	</nav><br><br>
	<section>
		<table width=80% border=0 >
			<tr>
				<td  id=box3 bgcolor=transparent><b><u>About us:</u></b><br>Our Bank is all
					over the World.It build in 2009.Customers are Satisfied with our
					Bank.Director of Bank is Mr. Chanda Narayan.
				<td id=box3 rowspan=3><canvas id="mycanvas" width=300 height=600 style="border:1px solid blue;"></canvas></td>
				<td id=box1 bgcolor=transparent><b>Call Us:</b><br>011-180000222/180000223<br>Chetnya123@ClubBank.com </td>
			</tr>
			<tr>
				<td id=box1 rowspan=2 bgcolor=transparent><marquee direction=up
						behavior=scroll scrollamount=2>						<b><font color=orange>Public Notice:</font></b><br>
						<br>Candidates are advised to check the recruitment
						imfromation from the craeer link that is available on our offical
						website.Or you may contact on address:<br>
						<br>Bank Head Dept.<br>block-102<br>MG Road<br>New
						Delhi<br>12204
					</marquee>
				<td bgcolor=yellow>
					<fieldset>
						<legend>LOGIN!!!</legend>
						<form name=login method=post action="http://localhost:9080/ClubBank/login.jsp" >
						<table id=box1>
						<caption><Font size=3 color=red><%=errormessage %></Font></caption>
							<tr>
								<td>USERID:
								<td><input type=text name=Userid id=user></td>
							</tr>
							<tr>
								<td>PASSWORD:
								<td><input type=password name=pass id=password></td>
							</tr>
							<tr>
								<td colsapn=2><input type=submit value=LOGIN></td>
							</tr>
						</table>
						</form>
					</fieldset>
			</tr>
			<tr>
			<td id=box1 bgcolor=transparent><b>Information:</b><br>
				<marquee direction="down">The Bank never ask for
						confidental informtaion to any customer such as:ATM card no.,DEBIT
						card no.,User ID of Internet banking.If such information is aksed
						over phone ,mobile or through email.then dont discolse such
						confidential information to caller.In such cases customers are
						requested to bring this notice to oarent branch of Bank.</marquee>
			</tr>
		</table>
	</section>
	<section id=sec><b>Relationship Beyond
	Banking.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&copy;2012
	Club Bank.All rights
	reserved.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	Join on Facebook.</b> <br>
	<br>
	<br><br><br>
	</section>
	<footer>
		
		<marquee id=marq1 direction="left" behavior=scroll scrollamount=11
		width=1417px height=55 bgcolor=transparent>
		<br>
		<b><u>*ATTENTION:</u><font color=Blue>Hiring for New Clerks
				in Bank.Any Graduate can come.Hiring Process is on Test AND
				Inteview.Opening is til 20 April 2015............</font></b>
	</marquee> <br>
	<center>
		<a href="">&copy;WWW.CLUBBANK.COM</a>
	</center>
	</footer>
</body>
</html>