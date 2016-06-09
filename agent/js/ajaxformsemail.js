/*
This is our function to use xmlhttp requrests, i did not write this part w3 schools did
[url=http://www.w3schools.com/ajax/ajax_browsers.asp]http://www.w3schools.com/ajax/ajax_browsers.asp[/url]
This was quicker than just making my own :)
*/
var xmlHttp // xmlHttp variable

function GetXmlHttpObject(){ // This function we will use to call our xmlhttpobject.
var objXMLHttp=null // Sets objXMLHttp to null as default.
if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.
objXMLHttp=new XMLHttpRequest() // Creates a xmlhttp request.
}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.
objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.
} // End ElseIf.
return objXMLHttp // Returns the xhttp object.
} // Close Function

function CheckUsername(name){
//alert("ok");
//alert(name);
//alert(image);
	// This function we will use to check to see if a username is taken or not.
xmlHttp=GetXmlHttpObject() // Creates a new Xmlhttp object.
if (xmlHttp==null){ // If it cannot create a new Xmlhttp object.
alert ("Browser does not support HTTP Request") // Alert Them!
return // Returns.
} // End If.

var url="UserCheck.jsp?name="+name // Url that we will use to check the username.
xmlHttp.open("GET",url,true) // Opens the URL using GET
xmlHttp.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.
if (xmlHttp.readyState == 4) { 
// If the onreadystatechange is equal to 4 lets show the response text.

document.getElementById("display").innerHTML = xmlHttp.responseText; 

// Updates the div with the response text from check.php
} // End If.
}; // Close Function
xmlHttp.send(null); // Sends NULL instead of sending data.
} // Close Function.



var xmlHttp1 // xmlHttp variable

function GetXmlHttpObject1(){ // This function we will use to call our xmlhttpobject.
var objXMLHttp1=null // Sets objXMLHttp to null as default.
if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.
objXMLHttp1=new XMLHttpRequest() // Creates a xmlhttp request.
}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.
objXMLHttp1=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.
} // End ElseIf.
return objXMLHttp1 // Returns the xhttp object.
} // Close Function

function setAttr(name,value){
 //alert("name:"+name+"value:"+value); //alert("value:"+value);
	// This function we will use to check to see if a username is taken or not.
xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.
if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.
alert ("Browser does not support HTTP Request") // Alert Them!
return // Returns.
} // End If.

var url="setattr.jsp?n="+name+"&v="+value // Url that we will use to check the username.//alert("ok");
xmlHttp1.open("POST",url,true) // Opens the URL using GET
xmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.
if (xmlHttp1.readyState == 4) { 
// If the onreadystatechange is equal to 4 lets show the response text.

//document.getElementById("display1").innerHTML = xmlHttp1.responseText; 

// Updates the div with the response text from check.php
} // End If.
}; // Close Function
xmlHttp1.send(null); // Sends NULL instead of sending data.
} // Close Function.


var xmlHttp2 // xmlHttp variable

function GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.
var objXMLHttp2=null // Sets objXMLHttp to null as default.
if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.
objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.
}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.
objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.
} // End ElseIf.
return objXMLHttp2 // Returns the xhttp object.
} // Close Function

function CheckUsername1(catname,name){
//alert("ok");
//alert(cat);
//alert(name);//alert(catname);
//alert(image);
	// This function we will use to check to see if a username is taken or not.
xmlHttp3=GetXmlHttpObject3() // Creates a new Xmlhttp object.
if (xmlHttp3==null){ // If it cannot create a new Xmlhttp object.
alert ("Browser does not support HTTP Request") // Alert Them!
return // Returns.
} // End If.

var url="UserCheck1.jsp?name="+name+"&catname="+catname // Url that we will use to check the username.
xmlHttp3.open("GET",url,true) // Opens the URL using GET
xmlHttp3.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.
if (xmlHttp3.readyState == 4) { 
// If the onreadystatechange is equal to 4 lets show the response text.
document.getElementById("display1").innerHTML = xmlHttp3.responseText; 
// Updates the div with the response text from check.php
} // End If.
}; // Close Function
xmlHttp3.send(null); // Sends NULL instead of sending data.
} // Close Function.

var xmlHttp3 // xmlHttp variablefunction GetXmlHttpObject3(){ // This function we will use to call our xmlhttpobject.var objXMLHttp3=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp3=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp3=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp3 // Returns the xhttp object.} // Close Function

// Close Function. */function getprod(name){//alert(name);	// This function we will use to check to see if a username is taken or not.xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.alert ("Browser does not support HTTP Request") // Alert Them!return // Returns.} // End If.var url="getprod.jsp?name="+name // Url that we will use to check the username.xmlHttp1.open("GET",url,true) // Opens the URL using GETxmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.if (xmlHttp1.readyState == 4) { // If the onreadystatechange is equal to 4 lets show the response text.document.getElementById("displayprod").innerHTML = xmlHttp1.responseText; // Updates the div with the response text from check.php} // End If.}; // Close FunctionxmlHttp1.send(null); // Sends NULL instead of sending data.} // Close Function.var xmlHttp2 // xmlHttp variablefunction GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.var objXMLHttp2=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp2 // Returns the xhttp object.} // Close Functionfunction getvalues(name){alert(name);	// This function we will use to check to see if a username is taken or not.xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.alert ("Browser does not support HTTP Request") // Alert Them!return // Returns.} // End If.var url="getprodvalues.jsp?name="+name // Url that we will use to check the username.xmlHttp1.open("GET",url,true) // Opens the URL using GETxmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.if (xmlHttp1.readyState == 4) { // If the onreadystatechange is equal to 4 lets show the response text.//document.getElementById("displayprod").innerHTML = xmlHttp1.responseText; // Updates the div with the response text from check.php} // End If.}; // Close FunctionxmlHttp1.send(null); // Sends NULL instead of sending data.} // Close Function.var xmlHttp2 // xmlHttp variablefunction GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.var objXMLHttp2=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp2 // Returns the xhttp object.} // Close Functionfunction loginCheck(uname,pwd){alert(name);	// This function we will use to check to see if a username is taken or not.xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.alert ("Browser does not support HTTP Request") // Alert Them!return // Returns.} // End If.var url="logincheck.jsp?uname="+uname+"&pwd="+pwd // Url that we will use to check the username.xmlHttp1.open("GET",url,true) // Opens the URL using GETxmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.if (xmlHttp1.readyState == 4) { // If the onreadystatechange is equal to 4 lets show the response text.document.getElementById("displayerr").innerHTML = xmlHttp1.responseText; // Updates the div with the response text from check.php} // End If.}; // Close FunctionxmlHttp1.send(null); // Sends NULL instead of sending data.} // Close Function.var xmlHttp2 // xmlHttp variablefunction GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.var objXMLHttp2=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp2 // Returns the xhttp object.} // Close Functionfunction statechange(statevalue,sessionid){//alert(statevalue);//alert(sessionid);	// This function we will use to check to see if a username is taken or not.xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.alert ("Browser does not support HTTP Request") // Alert Them!return // Returns.} // End If.var url="statechange.jsp?statevalue="+statevalue+"&sessionid="+sessionid // Url that we will use to check the username.xmlHttp1.open("POST",url,true) // Opens the URL using GETxmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.if (xmlHttp1.readyState == 4) { // If the onreadystatechange is equal to 4 lets show the response text.//document.getElementById("display").innerHTML = xmlHttp1.responseText; // Updates the div with the response text from check.php} // End If.}; // Close FunctionxmlHttp1.send(null); // Sends NULL instead of sending data.} // Close Function.var xmlHttp2 // xmlHttp variablefunction GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.var objXMLHttp2=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp2 // Returns the xhttp object.} // Close Functionfunction changepwd(cp,np,rnp){alert(cp);	// This function we will use to check to see if a username is taken or not.xmlHttp1=GetXmlHttpObject1() // Creates a new Xmlhttp object.if (xmlHttp1==null){ // If it cannot create a new Xmlhttp object.alert ("Browser does not support HTTP Request") // Alert Them!return // Returns.} // End If.var url="changeuserpwd.jsp?cp="+cp+"&np="+np+"&rnp"+rnp // Url that we will use to check the username.xmlHttp1.open("POST",url,true) // Opens the URL using GETxmlHttp1.onreadystatechange = function () { // This is the most important piece of the puzzle, if onreadystatechange is equal to 4 than that means the request is done.if (xmlHttp1.readyState == 4) { // If the onreadystatechange is equal to 4 lets show the response text.document.getElementById("display").innerHTML = xmlHttp1.responseText; // Updates the div with the response text from check.php} // End If.}; // Close FunctionxmlHttp1.send(null); // Sends NULL instead of sending data.} // Close Function.var xmlHttp2 // xmlHttp variablefunction GetXmlHttpObject2(){ // This function we will use to call our xmlhttpobject.var objXMLHttp2=null // Sets objXMLHttp to null as default.if (window.XMLHttpRequest){ // If we are using Netscape or any other browser than IE lets use xmlhttp.objXMLHttp2=new XMLHttpRequest() // Creates a xmlhttp request.}else if (window.ActiveXObject){ // ElseIf we are using IE lets use Active X.objXMLHttp2=new ActiveXObject("Microsoft.XMLHTTP") // Creates a new Active X Object.} // End ElseIf.return objXMLHttp2 // Returns the xhttp object.} // Close Function