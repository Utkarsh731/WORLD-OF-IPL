<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regjsp</title>

<style>
body, html {
background-image: url("IMG/back.jpg");
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-size:auto;
}




* {
  box-sizing: border-box;
}
.bg-img {
	/* The image used */
	background-image: url("IMG/89631.jpg");
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
<body >

<%
            if(session.getAttribute("userStatus")!=null){
            if(session.getAttribute("userStatus").equals("1")){
            
            %>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<div class="bg-img">
    <div class="container">
      <div class="topnav">
        <a class="active" href="loginy.jsp">Home</a>
        <div class="topnav-right">
        <a  href="controller.jsp?page=logout">Logout</a>
      </div>
      </div>
      </div>


</br>
  <form action="calculate.jsp">
    <center>

<table style="color:white">
<tr>
<td>
</p align="center">Select the Players from the given list of players........</p>
</td>
</tr>
<%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl_project",
"root","ayushi2005"); 
Statement st= con.createStatement(); 
ResultSet rs; 

String sql="select * from players";

rs=st.executeQuery(sql);

while(rs.next())
{
%><tr>
		<td><%=rs.getString("name")%></td>
		<td><input type="checkbox" name="checks" value="<%=rs.getString("name")%>">
		</br>
  </tr>
<%}
 


%>

</br>
</br>
<tr>
<td>
<input type="submit" value="Make Team" align="middle">
</td>
</tr>
</table>

</form>
</div>

<%
            }else response.sendRedirect("testindex.html");
            }else response.sendRedirect("testindex.html");
                %>

</body>
</html>