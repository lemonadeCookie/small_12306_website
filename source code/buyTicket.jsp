<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buyTicket.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<body>
   
<center>
 查找车票信息 <br>
    
<form action="queryTicket.jsp" name=form>
<table>
   <tr><td >出发地</td>
   <td><Input name="startStation" id="startStation" type=text size="15" ></td></tr>
 	<tr><td >目的地</td>
   <td><Input name="endStation" id="startStation" type=text size="15"></td></tr>  
</table>
  <table>
  <tr><td><input type="button" name="button" id="button" value="查询" onclick="addInfo();"></td></tr>
</table>
</Form>
</CENTER>
</body>
</html>
