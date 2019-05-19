<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body, html {
background-image:url(IMG/backgro.jpg);
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-size: cover;
}

* {
  box-sizing: border-box;
}
.bg-img {
	/* The image used */
	background-image: url("89631.jpg");
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
	position: fixed;
	margin: 20px;
	width: 1300px;
}
.topnav {
  overflow: hidden;
  background-color: #333;
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
  border: 3px solid #f1f1f1;
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
  <a class="active" href="index.html">Home</a>
  <div class="topnav-right">
  <a  href="controller.jsp?page=logout">Logout</a>
</div>
</div>
</div>

<div class="bg-text">
		
			<form action="addadmin.jsp">
			<center>
			<table>
			<tr>
			<td><label for="uname"><b>Username</b></label></td>
      <td><input type="text" placeholder="Enter Username" name="uname" required></td>
</tr>
<tr>
		<td><label for="psw"><b>Password</b></label></td>
      <td><input type="password" placeholder="Enter Password" name="psw" required></td>
		</tr>
		<tr>
			<td><label for="fname"><b>First Name</b></label></td>
      <td><input type="text" placeholder="Enter First name" name="fname" required></td>
</tr>
<tr>
	<td>
      <label for="lname"><b>Last Name</b></label></td>
      <td><input type="text" placeholder="Enter Last Name" name="lname" required></td>
</tr>
<tr>
      <td><label for="email"><b>Email</b></label></td>
      <td><input type="text" placeholder="Enter Email" name="email" required></td>
		</tr>
<tr>
      <td><label for="address"><b>Address</b></label></td>
      <td><input type="text" placeholder="Enter Address" name="address" required></td>
		</tr>
<tr>
      <td><label for="contact"><b>Contact</b></label></td>
      <td><input type="text" placeholder="Phone Number" name="contact" required></td>
		</tr>
<tr>
      <td><label for="city"><b>City</b></label></td>
      <td><input type="text" placeholder="Enter City" name="city" required></td>
		</tr>
<tr>
	<td>
      <button type="submit">Add Admin</button></td>
		</tr>
	</table>
	</center>
		</form>
	
</div>
</div>

 <%
            }else response.sendRedirect("testindex.html");
            }else response.sendRedirect("testindex.html");
                %>

</body>
</html>