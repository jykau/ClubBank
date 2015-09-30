<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="new.js">

</script>
<body onLoad="f1.t1.focus()">
<form name=f1 method=get action="http://localhost:9080/ClubBank/Add.jsp">
<input type=text name=t1>
<input type=submit value=click onClick=" return check() ">
</form>
	<!--Abrr tag  -->
	<p>
		The <abbr title="World Health Organisation">WHO</abbr> was founded in
		1948. <br>
		<!-- Address tag -->
	<address>
		Written by:<a href="">Jyoti</a><br> Visted at:<br> Box no.:
	</address>
	<!-- Area tag -->
	<image src="C:/Users/Jyoti/Desktop/planet1.jpg" alt=club2 height=300
		width=500 usemap=#clubmap> <map name=clubmap>
		<area shape="circle" coords="124,58,20" alt="club1"
			href="C:/Users/Jyoti/Desktop/earth.jpg">
	</map>
	<br>
	<!-- Sound tag --> <audio controls> <sound
		src="C:/Users/Public/Music/Sample Music/Kalimba.mp3" type=audio/mpeg></audio>
	<!-- BDo tag -->
	<p>
		<big><bdo dir="rtl">My name is Jyoti</bdo></big>
	</p>
	<!-- Canvas with linear gradient --> <canvas id="mycanvas" width=300
		height=300 style="border:1px solid blue;"></canvas> <script>
			var c = document.getElementById("mycanvas");
			var ctx = c.getContext("2d");
			ctx.fillStyle = "pink";
			ctx.fillRect(0, 0, 200, 200);
			ctx.moveTo(0, 0);
			ctx.lineTo(200, 200);
			ctx.stroke();
			ctx.beginPath();
			ctx.arc(90, 50, 40, 0, 2 * Math.PI);
			ctx.stroke();
			var cto = c.getContext("2d");
			var grad = cto.createLinearGradient(0, 0, 300, 0);
			grad.addColorStop(0, "red");
			grad.addColorStop(1, "green");
			cto.fillStyle = grad;
			cto.fillRect(100, 80, 80, 80);
			ctx.font = "20px Arial";
			ctx.fillText("hii", 20, 20);
			ctx.strokeText("hello", 65, 40);
		</script> <!-- Detail tag --> <br>
	<meter value=2 min=0 max=10>2 out of 10</meter>
	<br>
	<meter value=0.6>60%</meter>
</body>
</html>

</body>
</html>