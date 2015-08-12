<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stationInfo.jsp' starting page</title>
    
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
    
    车站信息 <br>
    <%
		int intPageSize; //一页显示的记录数  
		int intRowCount; //记录总数  
		int intPageCount; //总页数  
		int intPage; //待显示页码 
 		java.lang.String strPage;  
		int i;
    	ResultSet rs_station = AdminStation.getAllStation();
    	//设置一页显示的记录数
    	intPageSize = 8;  
    	//取得待显示页码  
		strPage = request.getParameter("page");  
		if(strPage==null){  
		//表明在QueryString中没有page这一个参数，此时显示第一页数据  
		intPage = 1;  
		} else{  
		//将字符串转换成整型  
		intPage = java.lang.Integer.parseInt(strPage);  
		if(intPage< 1) intPage = 1;  
		} 
		//获取记录总数  
		rs_station.last();  
		intRowCount = rs_station.getRow();  
		//记算总页数  
		intPageCount = (intRowCount+intPageSize-1) / intPageSize;  
		//调整待显示的页码  
		if(intPage>intPageCount) intPage = intPageCount;  
 	
 	
 		out.print("<Table Border style='font-size: 10pt'>"); 
 		if(intPageCount>0){
 			//将记录指针定位到待显示页的第一条记录上  
		    rs_station.absolute((intPage-1) * intPageSize + 1);  
		    //显示数据 
		    i=0;
		    while(i< intPageSize && !rs_station.isAfterLast()){				 				
						out.print("<TR>"); 
						out.print("<TD >"+rs_station.getString(1)+"</TD>"); 
						String idstr=rs_station.getString(1);
						out.print("<TD><a href='stationDetails.jsp?id="+idstr+"'>修改</a></TD>"); 
						out.print("</TR>") ; 
						rs_station.next();
		    			i++;
								
	    	}
	    }
	    out.print("</Table>"); 	
	%>
	第<%=intPage%>页  共<%=intPageCount%>页 
	<%if(intPage>1){%><a href="stationInfo.jsp?page=<%=intPage-1%>">上一页</a><%}%> 
	<%if(intPage<intPageCount){%><a href="stationInfo.jsp?page=<%=intPage+1%>">下一页</a><%}%> 

	  </body>
</html>
	<% 
    	//AdminStation.close_db();
    %>    

