<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />
<jsp:useBean id="AdminTrain" class="bootstrap.AdminTrain" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateTicketNum.jsp' starting page</title>
    
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
  <%
 	 String trainid = request.getParameter("trainID");
 	 String num1 = request.getParameter("num1");
 	 String num2 = request.getParameter("num2");
 	 String num3 = request.getParameter("num3");
 	 String num4 = request.getParameter("num4");
 	 
 	 //out.print(" "+ trainid + " "+ num1+ " "+ num2+" "+num3+" "+num4);
 	 AdminTrain.updateTickets(trainid, num1, num2, num3, num4);
 	 response.sendRedirect("updateTicketInfo.jsp?num=5");
  
   %>
    This is my JSP page. <br>
  </body>
</html>
