
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Investigative Case Management & Data Analysis Software</title>
</head>

<body>

<%@page import="beans.MyDriver"%>
<%
try{
	

if(rs.next())
{
	String id=rs.getString("agentid");
	session.setAttribute("name",name);
	session.setAttribute("pswd",pswd);
    session.setAttribute("aid",id);
	response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("index.jsp?msg=please enter valid details");
}
}
catch(Exception e)
{
}
%>
</body>
</html>