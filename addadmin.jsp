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

String user=request.getParameter("uname"); 
session.putValue("uname",user); 
String pwd=request.getParameter("psw"); 
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String city=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system",
"root","ayushi2005"); 
Statement st= con.createStatement(); 
ResultSet rs; 
String sql="insert into users(first_name,last_name,user_name,email,password,user_type,contact_no,city,address)values('"+fname+"','"+lname+"','"+user+"','"+email+"','"+pwd+"','admin','"+contact+"','"+city+"','"+address+"')";
int i=st.executeUpdate(sql); 

if(i>0)
	{
	out.println("<script type=\"text/javascript\">");
   out.println("alert('New Admin Added');");
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


</body>
</html>