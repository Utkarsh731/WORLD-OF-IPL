<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
	body,html {
	background-image:url(IMG/backgro.jpg);
	  margin: 0;
	  background-size: cover;
	  font-family: Arial, Helvetica, sans-serif;
	}
	* {
	  box-sizing: border-box;
	}
	.bg-img {
		/* The image used */
		background-image: url("CSK2017.jpg");
	min-height:700px;
	min-width:750px;

		/* Center and scale the image nicely */
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;

		/* Needed to position the navbar */
		position: relative;
	}

	/* Position the navbar container inside the image */
	.container {
		position: absolute;
		margin: 20px;
		width: 1300px;
	}

	.topnav {
	  overflow: hidden;
	  background-color: #333;
		position: fixed;
		width:97%;
	}

	.topnav a {
	  float: left;
	  color: #f2f2f2;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 17px;
	}

	.topnav a:hover {
	  background-color: #ddd;
	  color: black;
	}

	.topnav a.active {
	  background-color: #4CAF50;
	  color: white;
	}
	.topnav-right {
	  float: right;
	}

	/* Position text in the middle of the page/image */
	.bg-text {
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
	  color: white;
	  font-weight: bold;
	  border: 3px black;
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  z-index: 2;
	  width: 80%;
	  padding: 20px;
	  text-align: center;
	}


	</style>


</head>
<body>

<%
            if(session.getAttribute("userStatus")!=null){
            if(session.getAttribute("userStatus").equals("1")){
            
            %>

<div class="bg-img">
		<div class="container">
<div class="topnav">
	<a class="active" href="newadminx.jsp">Home</a>
	<div class="topnav-right">
	<a  href="controller.jsp?page=logout">Logout</a>
</div>
</div>
</div>

	<div class="bg-text">
		<center>
	<form action = "dplayer.jsp">
<table>
	<tr>
		<td><label for="pname"><b>Name</b></label></td>
	<td><input type="text"  name="pname" required></td>
      <tr>
			<center>	<td><input type="submit" value="Delete"></td></center>
      </tr>
	</table>

	</form>
	</center>
</div>

</div>

<%
            }else response.sendRedirect("testindex.html");
            }else response.sendRedirect("testindex.html");
                %>

</body>
</html>