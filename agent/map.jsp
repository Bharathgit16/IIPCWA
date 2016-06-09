
<%if(session.getAttribute("name")==null)
{
	response.sendRedirect("index.jsp?msg=You need to log in first");
}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="http://maps.google.com/maps?file=api&v=2&key=abcdefg"
      type="text/javascript"></script>
      <script type="text/javascript">
    //<![CDATA[
    function load() {
      if (GBrowserIsCompatible()) {
        var map = new GMap2(document.getElementById("map"));
        map.setCenter(new GLatLng(37.4419, -122.1419), 13);
      }
    }
    //]]>
    </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
	width: 820px;
	margin-top: 121px;
	margin-left: 220px;
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
	width: 100px;
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
.buttons1 {float: left;
	height: 40px;
	width: 820px;
	margin-top: 121px;
	margin-left: 220px;
	background-position: center;
}
</style>
</head>

 <body onload="load()" onunload="GUnload()">
    
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
<p>&nbsp;</p>
<div id="map" style="width: 900px; height: 450px"></div>
</body>
</html>
