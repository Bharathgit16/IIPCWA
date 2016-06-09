
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
	background-image: url(images/cyber.png);
}
body {
	background-color:#2C3039;
}
.buttons {
	float: left;
	height: 40px;
	width: 520px;
	margin-top: 201px;
	margin-left: 20px;
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
	width: 120px;
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
	width: 140px;
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
	margin-top: 70px;
	padding-top: 5px;
	font-family: "Segoe UI";
	font-size: 14px;
	color: #FFF;
}
.text_field {
	float: left;
	height: auto;
	width: auto;
	margin-bottom: 42px;
	margin-top: 5px;
	margin-left: 2px;
}
.submit {
	float: left;
	height: 24px;
	width: 80px;
	margin-left: 500px;
	margin-top: 20px;
}
</style>
</head>

<body>
<div class="maincontainer">
  <div class="buttons">
 <a href="<%=request.getContextPath()%>">   <div class="button_1">Home</div></a>
   <a href=""> <div class="button_2"></div></a>
   <a href=""> <div class="button_3"></div></a>
   <a href=""> <div class="button_4"></div></a>
  </div>
  <div class="sign_in">   <form id="form1" name="form1" method="post" action="authe.jsp">
    <div class="text_fields">
      <div class="text_field">
     
           <input type="hidden" name="role" value="2">
          <input type="text" name="name" id="name"  style="background-color:transparent;border:hidden; width:200px; height:20px; color:#FFF "/>
       
      </div>
      <input type="password" name="pswd" id="pswd"  style="background-color:transparent;border:hidden; width:200px;height:20px;color:#FFF "/>
      </div>
    <div class="submit"> <input type="image"src="images/buttons.png" /></div><%if(request.getParameter("msg")!=null){%>
    <font size="4" color="red"><blink><%=request.getParameter("msg")%></blink></font>
        <%}%></form>
  </div>
</div>
</body>
</html>
