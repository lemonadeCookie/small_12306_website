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

<% 
  	/*if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}*/
%>
<script type="text/javascript">
	function fun()
	{
		 if(confirm("确定增加吗")){
			 window.location="addStationInfo.jsp?num=2&&station1=" + document.getElementById('station1').value+
			 "&&station2=" + document.getElementById('station2').value+
			 "&&distance=" + document.getElementById('distance').value;
		}else{
			 window.location="addStationInfo.jsp?num=2";
		}
	}
</script>
</head>
<%
	String s1 = request.getParameter("station1");
	String s2 = request.getParameter("station2");
	String d = request.getParameter("distance");
	if(s1 != null && s2 != null && d != null){
		int dInt = Integer.parseInt(d);
		AdminStation.updateOrAddNear(s1,s2,dInt);
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

<center>
<h2>添加更新站点与站点距离</h2>
<FORM class="form-search" name=form>
<table class="table table-bordered">
   <tr>
     <td height="36"><span class="STYLE5"><h4>站点名</h4></span></td>
   <td><Input style="height:40" name="station1" id="station1" type=text size="15"></td>
   </tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>相邻站点</h4></span></td>
   <td><Input style="height:40" name="station2" id="station2" type=text size="15"></td>
   <tr>
     <td height="36"><span class="STYLE5"><h4>距离</h4></span></td>
   <td><Input style="height:40" name="distance" id="distance" type=text size="15"></td>
   </tr>  
</table>
    <button class="btn btn-primary" type="button" name="button" id="button" onclick="fun();">修改</button>  
</Form>
</CENTER>

</body>
</html>