<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@page import="beans.MyDriver"%>
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
<script type="text/javascript" src="js/ajaxformsemail.js"></script>
<script type="text/javascript">
function check()
{
	
	if (agent.cid.value=="Selected")
	{
		alert("Please select  case id");
		agent.cid.focus();
		return false;
	}
	else if (agent.title.value==null||agent.title.value=="")
	{
		alert("Please enter  evidence title");
		agent.title.focus();
		return false;
	}
	else if (agent.edesc.value==null||agent.edesc.value=="")
	{
		alert("Please enter description");
		agent.edesc.focus();
		return false;
	}
	else if ( agent.efile.value ==null|| agent.efile.value=="" ) 
	{ 
		alert ( "Please select a file to upload" ); 
		agent.efile.focus();
		return false; 
	} 
	
		
		return true;	  
}
</script>
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
</a></div>
<div class="sign_in1">
    <div class="job1">
      <p><a href="upev.jsp"><span class="button_4">Upload Evidence</span></a></p>
  </div>
    <div class="job2"><form name="agent" method="post" onSubmit="return valid()" action="insertevidence.jsp" enctype="multipart/form-data">
      <table width="440" height="214" border="0" style="font-style:normal;color:#FFF">
      <%
	String id=(String)session.getAttribute("aid");
Statement st=MyDriver.getConnection("READ");
ResultSet rs=st.executeQuery("select * from cases where agentid='"+id+"' and status='Assigned'");
System.out.println("hi after result set id is........"+id);

%>
 
        <tr>
          <td width="127" height="48">Case Id</td>
          <td width="262">
          <select name="cid" id="cid" onblur="setAttr(this.name,this.value)">><option value="Select">Select</option><%while(rs.next()){
%><option value="<%=rs.getString("caseid")%>"><%=rs.getString("caseid")%></option><%}%></select></td>
        </tr>
        <tr>
          <td height="47">Evidence Title</td>
          <td><input name="title" maxlength="30"  type="text" onBlur="setAttr(this.name,this.value);"></td>
        </tr>
        <tr>
          <td height="47">Description</td>
          <td><textarea name="edesc" onBlur="setAttr(this.name,this.value);" rows="5" cols="20"></textarea></td>
        </tr>
        <tr>
          <td height="46">Evidence</td>
          <td><input name="efile" type="file" id="efile"  maxlength="50"></td>
        </tr>
        <tr>
          <td height="63"><p>&nbsp;</p>
            <p>&nbsp;</p></td>
          <td><p>
            <input type="image"src="images/buttons.png" onClick="return check();"/>
            </p></td>
        </tr>
      </table></form>
    </div>
  </div>
</body>
</html>
