<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customize Player</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String na=request.getParameter("name"); 
session.putValue("name",na);
String rate=request.getParameter("rating");
String mat=request.getParameter("matches");
String run=request.getParameter("runs");
String avg=request.getParameter("average");
String sr=request.getParameter("sr");
String hund=request.getParameter("hundreds");
String fou=request.getParameter("fours");
String six=request.getParameter("sixes");
String wckts=request.getParameter("wickets");
String aveb=request.getParameter("aveb");
String eco=request.getParameter("eco");
String fourW=request.getParameter("four_w");
String fiveW=request.getParameter("five_w");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl_project",
"root","ayushi2005"); 
Statement st= con.createStatement(); 
ResultSet rs; 

String sql="update players set name='"+na+"', matches='"+mat+"', runs='"+run+"',average='"+avg+"',sr='"+sr+"',hundreds='"+hund+"',fours='"+fou+"',sixes='"+six+"',wickets='"+wckts+"',ave_b='"+aveb+"',eco='"+eco+"',four_w='"+fourW+"',five_w='"+fiveW+"',rating='"+rate+"' where name='"+na+"'";

int i = st.executeUpdate(sql);


if(i>0)
	{
	out.println("<script type=\"text/javascript\">");
   out.println("alert('Player Customized');");
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

<a href="testindex.html">Home</a>
</body>
</html>