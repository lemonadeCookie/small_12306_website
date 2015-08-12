<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:useBean id="adminTrain" class="bootstrap.AdminTrain" />


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'trainStationInfo.jsp' starting page</title>
    
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
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
    %>
    <%
		adminTrain.setNextStopDisInfo("G1001");
			
		out.print("途径站"+"<br>");			
		out.print("<Table Border style='font-size: 10pt'>"); 
    	out.print("<TR>"); 
    	out.print("<TD >"+"途径顺序"+"</TD>"); 
		out.print("<TD >"+"车站"+"</TD>"); 
		out.print("<TD >"+"是否停靠"+"</TD>"); 
		out.print("<TD >"+"下一站距离(/km)"+"</TD>"); 
		out.print("</TR>");
		for(int i=0; i < adminTrain.trainInfo.size();i++){
			//String station = adminTrain.trainList.get(i);
			out.print("<TR>"); 
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+(i+1)+"\">"+"</TD>");			
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+adminTrain.trainInfo.get(i).name+"\">"+"</TD>");
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+adminTrain.trainInfo.get(i).stop+"\">"+"</TD>");
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+adminTrain.trainInfo.get(i).nextDistance+"\">"+"</TD>");
			out.print("</TR>"); 
		}
    	out.print("</Table>"); 
		
		out.print("停靠站"+"<br>");			
    	out.print("<Table Border style='font-size: 10pt'>"); 
    	out.print("<TR>"); 
		out.print("<TD >"+"车站"+"</TD>"); 
		out.print("<TD >"+"下一停靠站距离(/km)"+"</TD>"); 
		out.print("</TR>");
		for(int i=0; i < adminTrain.nextStopStation.size();i++){
			//String station = adminTrain.trainList.get(i);
			out.print("<TR>"); 
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+adminTrain.nextStopStation.get(i).name+"\">"+"</TD>");
			out.print("<TD>"+"<input type=\"text\" name=\"station1\" id=\"station1\" value=\""+adminTrain.nextStopStation.get(i).nexeStopDistance+"\">"+"</TD>");
			out.print("</TR>"); 
		}
    	out.print("</Table>"); 
    
    
     %>
    This is my JSP page. <br>
  </body>
</html>
