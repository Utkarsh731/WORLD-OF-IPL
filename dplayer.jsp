<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String na=request.getParameter("pname"); 
session.putValue("pname",na);

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl_project",
"root","ayushi2005"); 
Statement st= con.createStatement(); 
ResultSet rs; 

String sql = "delete from players where name='"+na+"'";

int i = st.executeUpdate(sql);

if(i>0)
	{
	out.println("<script type=\"text/javascript\">");
   out.println("alert('Player Deleted');");
   out.println("location='newadminx.jsp';");
   out.println("</script>");
	}
else
	{
	out.println("<script type=\"text/javascript\">");
   out.println("alert('Something went Wrong..Please Try again Later');");
   out.println("location='newadminx.jsp';");
   out.println("</script>");
 }


%>
</br>
<a href="dplayer1.html">Retry</a>
</body>
</html>