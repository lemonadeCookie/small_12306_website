<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />
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
	<script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>
    
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
		<img src="ticketLogo.png" width="360" height="280"/>    
    </div>
    <div class="container">
	
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
                        			out.println("<li><a href=\"trainPassStation.jsp?num=2\" data-toggle=\"tab\">"+"查看车辆途经站</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=3\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");  
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");          		                               		
                        			        		                               		
                        		}
                        		else if(sd.equals("2")){
                        		    out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                        			out.println("<li class=\"active\"><a href=\"trainPassStation.jsp?num=2\" data-toggle=\"tab\">"+"查看车辆途经站</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=3\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");  
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");          		                               		
                        			        		                               		
                        		}                                             		
                        		else if(sd.equals("3")){
                        		    out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=2\" data-toggle=\"tab\">"+"查看车辆途经站</a></li>");
                        			out.println("<li class=\"active\"><a href=\"addTrainInfo.jsp?num=3\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");  
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"车次更新与修改</a></li>"); 
                        		}
                        		else if(sd.equals("4")){
                        		    out.println("<li><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=2\" data-toggle=\"tab\">"+"查看车辆途经站</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=3\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");  
                        			out.println("<li class=\"active\"><a href=\"updateTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"车次更新与修改</a></li>"); 
                        		}else{
                        		    out.println("<li class=\"active\"><a href=\"adminBar.jsp?num=1\" data-toggle=\"tab\">"+"车站信息维护</a></li>");
                        			out.println("<li><a href=\"trainPassStation.jsp?num=2\" data-toggle=\"tab\">"+"查看车辆途经站</a></li>");
                        			out.println("<li><a href=\"addTrainInfo.jsp?num=3\" data-toggle=\"tab\">"+"车次更新与修改</a></li>");  
                        			out.println("<li><a href=\"updateTrainInfo.jsp?num=4\" data-toggle=\"tab\">"+"车次更新与修改</a></li>"); 
                        		}                                 	
                        	 %>
                        </ul>
                </div>
            </div>
        </div>
	</div>
