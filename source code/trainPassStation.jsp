<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />
<jsp:useBean id="adminTrain" class="bootstrap.AdminTrain" />


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserBuy.jsp' starting page</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/userBuy.css" rel="stylesheet" media="screen">
    <link href="./css/bootstrap.min.css" rel="stylesheet" media="screen" id="bootstrap-css">
    <link href="./css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="./css/bootstrap-select.min.css" rel="stylesheet" media="screen">
    
	
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery-1.10.2.min.js"></script>

    
    <style type="text/css">
	    .filterable {
		    margin-top: 15px;
		}
		.filterable .panel-heading .pull-right {
		    margin-top: -20px;
		}
		.filterable .filters input[disabled] {
		    background-color: transparent;
		    border: none;
		    cursor: auto;
		    box-shadow: none;
		    padding: 0;
		    height: auto;
		}
		.filterable .filters input[disabled]::-webkit-input-placeholder {
		    color: #333;
		}
		.filterable .filters input[disabled]::-moz-placeholder {
		    color: #333;
		}
		.filterable .filters input[disabled]:-ms-input-placeholder {
		    color: #333;
		}

    </style>  
    <style type="text/css" rel="stylesheet">
		a{
		color:white;　　/*这是默认*/
		}
		a:hover{
		color:blue;  /*这是鼠标经过*/
		}
		a:active{
		color:red;   /*这是鼠标点击后*/
		}
	</style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
    <% 
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
    %>
  
  <body>

    <div class="page-header">
        <!--  <h1>12306订票系统<span class="pull-right label label-default">:)</span></h1>-->
		<img src="ticketLogo.png" width="360" height="280"/>    
    </div>
  <div class="container-fluid">
	
    <div class="row">
        <div class="col-md-12">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
               
                        <ul class="nav nav-tabs">
                        	<li>&nbsp&nbsp&nbsp&nbsp</li>
                        	<%
                        		String sd = request.getParameter("num");
	            			
                        		if(sd == null){
                            		out.println("<li class=\"active\"><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>");          		                               		
                        			        		                               		
                        		}
                        		else if(sd.equals("2")){
                            		out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li class=\"active\"><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>");          		                               		
                        			         		                               		
                        			        		                               		
                        		}                                             		
                        		else if(sd.equals("3")){
                            		out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li class=\"active\"><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>"); 
                        		}
                        		else if(sd.equals("4")){
                            		out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li class=\"active\"><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>"); 
                        		}
                        		else if(sd.equals("5")){
                            		out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li class=\"active\"><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>"); 
                        		}
                        		else if(sd.equals("6")){
                            		out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li class=\"active\"><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>"); 
                        		}else{
                            		out.println("<li class=\"active\"><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                            		out.println("<li><a href=\"addStationInfo.jsp?num=2\" data-toggle=\"tab\">"+"站点添加</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=3\" data-toggle=\"tab\">"+"车次信息查询与修改</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"增加车次</a></li>");  
                        			out.println("<li><a href=\"updateTicketInfo.jsp?num=5\" data-toggle=\"tab\">"+"更新车票数量</a></li>");
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=6\" data-toggle=\"tab\">"+"更新数据库</a></li>");  
                        		}                                 	
                        	 %>
                        </ul>
                </div>
            </div>
        </div>
	</div>
		<br>
	<div class="row">
	        <div class="span12">
	            <form method="post" accept-charset="UTF-8" action="trainPassStation.jsp" class="form-inline" >
	            	<input type="hidden" name="num" id="num" value=2>
	                <input name="trainID" id="trainID" class="span6" type="text" style="height:28" placeholder="车次" >
	                <input class="radio" name="type" id="type" type="radio" value="stop" checked> 停靠站
					<input class="radio" name="type" id="type" type="radio" value="all"> 所有途径站点
	                <button type="submit" class="btn btn-primary" style="height:28"><i class="icon-search icon-white"></i></button>
	            </form>
	        </div>
	</div>
	<div>
	   <%
	    String s1=request.getParameter("trainID");
	    String s2 = request.getParameter("type");
	    if(s1!=null && s2 != null){
		adminTrain.setNextStopDisInfo(s1);
		if(s2.equals("all")){
			out.print("<h4>途径站</h4>"+"<br>");			
			out.print("<Table class=\"table table-bordered\">"); 
	    	out.print("<TR class=\"info\">"); 
	    	out.print("<TD >"+"途径顺序"+"</TD>"); 
			out.print("<TD >"+"车站"+"</TD>"); 
			out.print("<TD >"+"是否停靠(1为停靠0为途径)"+"</TD>"); 
			out.print("<TD >"+"下一站距离(/km)"+"</TD>"); 
			out.print("</TR>");
			for(int i=0; i < adminTrain.trainInfo.size();i++){
				//String station = adminTrain.trainList.get(i);
				out.print("<TR>"); 
				out.print("<TD>"+(i+1)+"</TD>");			
				out.print("<TD>"+adminTrain.trainInfo.get(i).name+"</TD>");
				out.print("<TD>"+adminTrain.trainInfo.get(i).stop+"</TD>");
				out.print("<TD>"+adminTrain.trainInfo.get(i).nextDistance+"</TD>");
				out.print("</TR>"); 
			}
	    	out.print("</Table>"); 		
		}else if(s2.equals("stop")){			

		out.print("<h4>停靠</h4>"+"<br>");			
		out.print("<Table class=\"table table-bordered\">"); 
	    out.print("<TR class=\"info\">"); 
		out.print("<TD >"+"车站"+"</TD>"); 
		out.print("<TD >"+"下一停靠站距离(/km)"+"</TD>"); 
		out.print("</TR>");
		for(int i=0; i < adminTrain.nextStopStation.size();i++){
			//String station = adminTrain.trainList.get(i);
			out.print("<TR>"); 
			out.print("<TD>"+adminTrain.nextStopStation.get(i).name+"</TD>");
			out.print("<TD>"+adminTrain.nextStopStation.get(i).nexeStopDistance+"</TD>");
			out.print("</TR>"); 
		}
    	out.print("</Table>"); 
    	}
    
    }
     %>
	</div>
	
	
	
	
	
	
	</div>


</body>
</html>
