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
        <a class="active" href="newadminx.jsp">Home</a>
        <div class="topnav-right">
        <a  href="controller.jsp?page=logout">Logout</a>
      </div>
      </div>
      </div>
<div class="bg-text">

  <form action="addplayer.jsp">
    <center>
<table>

  <tr>
      <td><label for="name"><b>Name</b></label></td>
      <td><input type="text"  name="name" required></td>
    </tr>
    <tr>
      <td><label for="matches"><b>Matches</b></label></td>
      <td><input type="text"  name="matches" required></td>
    </tr>
      <tr>
        <td><label for="runs"><b>Runs</b></label></td>
      <td><input type="text"  name="runs" required></td>
    </tr>
    <tr>
      <td><label for="average"><b>Average</b></label></td>
      <td><input type="text"  name="average" required></td>
    </tr>
      <tr>
        <td><label for="sr"><b>Strike Rate</b></label></td>
      <td><input type="text"  name="sr" required></td>
    </tr>
      <tr>
        <td><label for="hundreds"><b>Hundreds</b></label></td>
        <td><input type="text"  name="hundreds" required></td>
      </tr>
      <tr>
      <td><label for="fours"><b>Fours</b></label></td>
      <td><input type="text"  name="fours" required></td>
    </tr>
      <tr>
        <td><label for="sixes"><b>Sixes</b></label></td>
    <td><input type="text"  name="sixes" required></td>
    </tr>
      <tr>
        <td><label for="wickets"><b>Wickets</b></label></td>
      <td><input type="text"  name="wickets" required></td>
    </tr>
    <tr>
      <td><label for="aveb"><b>AveB</b></label></td>
      <td><input type="text"  name="aveb" required></td>
    </tr>
    <tr>
      <td><label for="eco"><b>Economy</b></label></td>
      <td><input type="text"  name="eco" required></td>
    </tr>
      <tr>
        <td><label for="four_w"><b>Four Wickets</b></label></td>
      <td><input type="text"  name="four_w" required></td>
    </tr>
      <td><label for="five_w"><b>Five Wickets</b></label></td>
      <td><input type="text"  name="five_w" required></td>
    </tr>
    <tr>
      <td><label for="rating"><b>Rating</b></label></td>
      <td><input type="text"  name="rating" required></td>
    </tr>
   <tr>
    <td> <input type="submit" align="middle"></td>
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