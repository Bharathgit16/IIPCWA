<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%if(session.getAttribute("name")==null)
{
	response.sendRedirect("index.jsp?msg=You need to log in first");
}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Investigative Case Management & Data Analysis Software</title>
<style type="text/css">
.maincontainer {
	height: 600px;
	width: 980px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	background-image: url(images/cyberhome.png);
}
body {
	background-color:#2C3039;
}
.buttons {
	float: left;
	height: 40px;
	width: 980px;
	margin-top: 121px;
	margin-left: 0px;
	background-position: center;
}
.button_1 {
	float: left;
	height: 30px;
	width: 85px;
	font-family: "Segoe UI";
	font-size: 16px;
	color: #FFF;
	text-align: center;
	padding-top: 10px;
	background-image: url(images/b2.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center center;
}
.button_3 {
	float: left;
	height: 30px;
	width: 90px;
	margin-left: 10px;
	font-family: "Segoe UI";
	font-size: 16px;
	color: #FFF;
	text-align: center;
	padding-top: 10px;
}
.button_2 {
	float: left;
	height: 30px;
	width: 85px;
	margin-left: 10px;
	font-family: "Segoe UI";
	font-size: 16px;
	color: #FFF;
	text-align: center;
	padding-top: 10px;
}
.button_4 {
	float: left;
	height: 30px;
	width: 140px;
	margin-left: 10px;
	font-family: "Segoe UI";
	font-size: 16px;
	color: #FFF;
	text-align: center;
	padding-top: 10px;
}
.button_5 {
	float: left;
	height: 30px;
	width: 80px;
	margin-left: 0px;
	font-family: "Segoe UI";
	font-size: 16px;
	color: #FFF;
	text-align: center;
	padding-top: 10px;
}


a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFC;
}
a:hover {
	text-decoration: none;
	color: #FC0;
}
a:active {
	text-decoration: none;
}
.sign_in {
	float: left;
	height: 300px;
	width: 980px;
}
.text_fields {
	float: left;
	height: 95px;
	width: 230px;
	margin-left: 390px;
	margin-top: 150px;
	padding-top: 5px;
	font-family: "Segoe UI";
	font-size: 14px;
	color: #FFF;
}
.text_field {
	float: left;
	height: auto;
	width: auto;
	margin-bottom: 45px;
}
.submit {
	float: left;
	height: 24px;
	width: 80px;
	margin-left: 500px;
	margin-top: 20px;
}
.mid {
	float: left;
	height: 300px;
	width: 980px;
}
.job1 {	height: 40px;
	width: 100%;
}
.job2 {	height: auto;
	width: 100%;
	margin-left: 220px;
	color: #FFF;
}
.sign_in1 {	float: left;
	height: 300px;
	width: 980px;
	margin-top: 20px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	font-family: "Segoe UI";
	color: #FFF;
}
.buttons1 {float: left;
	height: 40px;
	width: 820px;
	margin-top: 121px;
	margin-left: 220px;
	background-position: center;
}
</style>
</head>

<body>
<div class="maincontainer">
<div class="buttons1"> <a href="home.jsp">
  <div class="button_1">Home</div>
  </a> <a href="viewcase.jsp">
  <div class="button_2">Case details </div>
  </a> <a href="upev.jsp">
  <div class="button_4">Upload Evidence</div>
  </a> <a href="cases.jsp"> </a> <a href="resources.jsp">
  <div class="button_4"> View resources </div>
  </a> <a href="report.jsp">
  <div class="button_2">Report</div>
  </a> <a href="map.jsp">
  <div class="button_2">Map</div>
  </a> <a href="logout.jsp">
  <div class="button_5">Logout</div>
</a> </div>
<div class="sign_in1">
    <div class="job1">
      <p>ViewREPORTS</p>
    </div><%@page import="beans.MyDriver"%>
  <%
	String id=(String)session.getAttribute("aid");
Statement st=MyDriver.getConnection("READ");
ResultSet rs=st.executeQuery("select * from cases,evidence where cases.caseid= evidence.caseid  ");
System.out.println("hi after result set id is........"+id);
while(rs.next()){
%>
    <div class="job2"><form name="agent" method="post" action="insertcase.jsp">
      <table width="665" height="261" border="0" style="font-style:normal;color:#FFF">
        <tr bgcolor="#666666">
          <td width="127" height="48">Case Title </td>
          <td width="34">&nbsp;</td>
          <td width="490"><%=rs.getString("tittle")%></td>
        </tr>
        <tr>
          <td height="47">Evedence Title </td>
          <td>:</td>
          <td><%=rs.getString("title")%></td>
        </tr>
        <tr>
          <td height="46">Evidence Desc </td>
          <td>:</td>
          <td><%=rs.getString("edesc")%></td>
        </tr>
        <tr>
          <td height="45"><p>Evidence File</p></td>
          <td>:</td>
          <td><p><%=rs.getString("efile")%></p></td>
        </tr>
        <tr>
          <td height="63">Status</td>
          <td>:</td>
          <td><%=rs.getString("status")%></td>
        </tr>
      </table></form>
    </div><%}%>
  </div>
</body>
</html>
