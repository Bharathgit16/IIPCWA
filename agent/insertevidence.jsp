<%@ page language ="java" import="java.io.*" %>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>

<%@page import="java.sql.*" %>
<%@page import="beans.MyDriver"%>
<%
String contentType = request.getContentType();
System.out.println("Content type is :: " +contentType);

if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{
	System.out.println("in if loop");

DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
System.out.println("1");
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength)
{
//System.out.println("In while");
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
String saveFile1 = file.substring(file.indexOf("filename=\"") + 10);
//out.print("FileName:" + saveFile.toString());
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile1 = saveFile1.substring(0, saveFile1.indexOf("\n"));
//out.print("FileName:" + saveFile.toString());
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
saveFile1 = saveFile1.substring(saveFile1.lastIndexOf("\\") + 1,saveFile1.indexOf("\""));
//out.print("FileName:" + saveFile.toString());
//out.print(dataBytes);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
//out.println(boundary);
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
String path=getServletContext().getRealPath("chief/userimages");
System.out.println(path);
System.out.println(saveFile);
String FileName=saveFile;
String fname=saveFile;
saveFile = path +"\\"+ saveFile;
System.out.println("1: "+saveFile);
/*String path1=getServletContext().getRealPath("/userimages");
System.out.println(path1);
saveFile1 = path1 +"\\"+ saveFile1;
System.out.println("1: "+saveFile1);*/

//saveFile = "C:\\Program Files\\Apache Software Foundation\\Tomcat 5.5\\webapps\\ROOT\\Extrusions\\" + saveFile;
FileOutputStream fileOut = new FileOutputStream(saveFile);
//fileOut.write(dataBytes);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
//out.println("File saved as " +saveFile);
/*
FileOutputStream fileOut1 = new FileOutputStream(saveFile1);
//fileOut.write(dataBytes);
fileOut1.write(dataBytes, startPos, (endPos - startPos));
fileOut1.flush();
fileOut1.close();
*/
/*end of getting image from text field*/



try{
System.out.println("add evidence");
	PreparedStatement pst=null;
	Statement st=null;
	ResultSet rs=null;
	String cid=(String)session.getAttribute("cid");
	System.out.println("cid.0..0 "+cid);
	int caseid=Integer.parseInt(cid);
	String title=(String)session.getAttribute("title");
	System.out.println(title);
	String edesc=(String)session.getAttribute("edesc");
	System.out.println(edesc);
    String aid=(String)session.getAttribute("aid");
	int agentid=Integer.parseInt(aid);
	System.out.println("file name is :"+FileName);

	st=MyDriver.getConnection("READ");
	
	pst=MyDriver.getPrepare("insert into evidence (eid,caseid,agentid,title,efile,edesc,edate) values(null,?,?,?,?,?,null)");
	System.out.println(" taking details ");
		
            
			pst.setInt(1,caseid);
			pst.setInt(2,agentid);
			pst.setString(3,title);
			pst.setString(4,FileName);
			pst.setString(5,edesc);
			
		System.out.println(" took values ");
            int result=pst.executeUpdate();
System.out.println("values inserted");
 

			if(result>0)
	{
		 PreparedStatement pst12=MyDriver.getPrepare("update cases set agentid=?,status=? where caseid='"+cid+"' ");

pst12.setString(1,aid);
pst12.setString(2,"Completed");

 pst12.executeUpdate();
 
 PreparedStatement his=MyDriver.getPrepare("insert into history(description) values(?)");
 his.setString(1,"Agent ID:"+cid+" Uploaded Evidence.");
 his.executeUpdate();

			response.sendRedirect("report.jsp");
	}
	
			

}catch(Exception e){
			  System.out.println(e);
		  }
    finally {
     // pst.close();
      //fis.close();
	}
}
	%>