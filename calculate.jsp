<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculated Result</title>
</head>
<body>

<style>
body, html {
background-image:url(IMG/backgro.jpg);
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-size: cover;
}
</style>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String[] values=request.getParameterValues("checks"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl_project",
"root","ayushi2005"); 
Statement st= con.createStatement(); 
ResultSet rs; 
double count=0.0;
for(int i = 0;i<values.length;i++)
{
	rs = st.executeQuery("select * from players where name='"+values[i]+"'");
	while(rs.next())
	{
		count = count+rs.getDouble("rating");
	}
}
out.println("Your selected Team is:</br>");
%>
	<ul>
		<%
			if(values.length==11){
				for(String temp : values){
					out.println("<li>"+temp+"</li>");
					}
				}
			else
				out.println("Number of players is not 11....Please reselect the team</br>");
				
		%>
	</ul>
	</br>
<%
		if(values.length==11)
			{
				out.println("Your total score = "+count);
			}

 %>
</br>
<a href="dream.jsp">Retry</a>
</br>
<a href="loginy.jsp">Home</a>
</body>
</html>