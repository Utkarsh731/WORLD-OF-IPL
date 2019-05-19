<%@page import="java.time.LocalTime"%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%

if(pDAO.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("userId",pDAO.getUserId(request.getParameter("username")));
    if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("admin")){
            response.sendRedirect("newadminx.jsp"); 
            
            }else if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("student")){
                response.sendRedirect("loginy.jsp");
            }
    

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("Loginx.jsp");
}
%>