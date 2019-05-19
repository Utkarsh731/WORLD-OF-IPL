<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
  body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
  }


  .bg-img {
    /* The image used */
    background-image: url("IMG/CSK2018.jpg");
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

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.topnav {
  overflow: hidden;
  background-color:	#383838;
}

.topnav a {
  float: left;
  margin-left: 10px;
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
.topnav-left {
  float: left;
}
.topnav span.active {
  background-color:#383838;
  color: white;
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
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="addadmin1.jsp">Add admin</a>
  <a href="addplayer1.jsp">Add Player</a>
  <a href="cusplayer1.jsp">Customize Player</a>
  <a href="dplayer1.jsp">Delete Player</a>
  <a href="dashboard.jsp">QUIZ</a>
</div>

<div class="topnav">
<div class="topnav-left"><span style="font-size:30px;cursor:pointer" class="active" onclick="openNav()">&#9776 </span></div>
  <a class="active" href="#">Home</a>
  <div class="topnav-right">
  <a  href="controller.jsp?page=logout">Logout</a>
</div>

</div>



<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</div>
</div>
 <%
            }else response.sendRedirect("testindex.html");
            }else response.sendRedirect("testindex.html");
                %>


</body>
</html>