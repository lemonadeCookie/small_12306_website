<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />
<jsp:useBean id="AdminTrain" class="bootstrap.AdminTrain" />
<jsp:useBean id="adminTrain" class="bootstrap.AdminTrain" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    <% 
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
    %>
      <%
          String s1=request.getParameter("id");
          String s2=request.getParameter("type");
          String s3=request.getParameter("num1");
          String s4=request.getParameter("num2");
          String s5=request.getParameter("num3");
          String s6=request.getParameter("num4");
          String trainID = s2+s1;         
          if((s1 != null)&&(s2 != null)&&(s3 != null)&&(s4 != null)&&(s5 != null)&&(s6 != null))
          if(AdminTrain.insertTrainInfo(trainID, s2, s3, s4, s5, s6))
		  	response.sendRedirect("selectTrainInfo.jsp?sequence=1&&num=4&&id="+trainID);
		  else
		  	response.sendRedirect("addTrainInfo.jsp?&num=4");
		  	
		  
	  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insertTrainID.jsp' starting page</title>
    
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
    This is my JSP page. <br>
  </body>
</html>
