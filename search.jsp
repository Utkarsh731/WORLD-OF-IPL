<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seaarch_JSP</title>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
  background-color: transparent;
  width: 800px;
  height: 800px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
  z-index: 2;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
  z-index: 1;
}
</style>




</head>
<body style=" background-color: #2980b9;">
	<%@ page import="java.sql.*"%>

	<%
	
String pname=request.getParameter("search");  
java.lang.Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl_project","root","ayushi2005"); 
Statement st= con.createStatement();
String name="";
String imageName="";
String matches,runs,hundreds,fours,sixes,wickets;
double average,strike;
ResultSet rs=st.executeQuery("select * from players where name='"+pname+"'");

 
if(rs.next()) 
{ 
	name=rs.getString(2);
	imageName="IMG/"+name+".png";
	matches=Integer.toString(rs.getInt(3));
	runs=Integer.toString(rs.getInt(4));
	average=rs.getFloat(5);
	strike=rs.getFloat(6);
	hundreds=Integer.toString(rs.getInt(7));
	fours=Integer.toString(rs.getInt(8));
	sixes=Integer.toString(rs.getInt(9));
	wickets=Integer.toString(rs.getInt(10));
%>

<div align="center">
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
    <%out.println("<img src='"+imageName+"'  width='800px' height='800px'>"); %>
      
    </div>
    <div class="flip-card-back">
      <table width='800px' height='800px'>
      	<tr>
      	<td>
			NAME:      	
      	</td>
      	<td>
			<%=name %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			MATCHES:      	
      	</td>
      	<td>
			<%=matches %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			RUNS:      	
      	</td>
      	<td>
			<%=runs %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			AVERAGE:      	
      	</td>
      	<td>
			<%=average %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			STRIKE RATE:      	
      	</td>
      	<td>
			<%=strike %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			HUNDREDS:      	
      	</td>
      	<td>
			<%=hundreds %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			FOURS:      	
      	</td>
      	<td>
			<%=fours %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			SIXES:      	
      	</td>
      	<td>
			<%=sixes %>      	
      	</td>
      	</tr>
      	<tr>
      	<td>
			WICKETS:      	
      	</td>
      	<td>
			<%=wickets %>      	
      	</td>
      	</tr>
      
      
      </table>
    </div>
  </div>
</div>

<%	

} 

else
{
	out.println("Invalid Name");
} 
%>

</br>
<a href="testindex.html">Home</a>
</body>
</html>