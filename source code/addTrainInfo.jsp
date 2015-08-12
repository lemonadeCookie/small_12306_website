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
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
%>
<script type="text/javascript">
	function addInfo()
	{
		 if(confirm("确定修改吗？下一步添加车次!")){
			 window.location="insertTrainID.jsp?id=" + document.getElementById('trainID').value+
			 "&&type=" + document.getElementById('trainType').value+
			 "&&num1=" + document.getElementById('num1').value+
			 "&&num2=" + document.getElementById('num2').value+
			 "&&num3=" + document.getElementById('num3').value+
			 "&&num4=" + document.getElementById('num4').value;
		}else{
			 window.location="addTrainInfo.jsp?id=" + document.getElementById('station1').value+"&&num=4";
		}
	}
</script>
</head>

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
<h2>添加车次信息</h2>如没有特殊情况(卧铺因其他原因无法使用)，当所加车次为特快时注意保证卧铺数量一致
<br><br>
<FORM class="form-search" name=form>
<table class="table table-bordered">
   <tr><td height="36"><span class="STYLE5"><h4>车次ID(不包含开头字母)</h4></span></td>
   <td><Input name="trainID" id="trainID" type=text size="15" ></td></tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>车辆类型</h4></span></td>
   <td>
   <input class="radio" name="trainType" id="trainType" type="radio" value="G" checked>高铁
   <input class="radio" name="trainType" id="trainType" type="radio" value="D">动车
   <input class="radio" name="trainType" id="trainType" type="radio" value="T">特快 
   </td>
   </tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>卧铺上/商务座(票)</h4></span></td>
   <td><Input  name="num1" id="num1" type=text size="15"></td></tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>卧铺中/特等座(票)</h4></span></td>
   <td><Input  name="num2" id="num2" type=text size="15"></td></tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>卧铺下/一等座(票)</h4></span></td>
   <td><Input  name="num3" id="num3" type=text size="15"></td></tr>
   <tr>
     <td height="36"><span class="STYLE5"><h4>硬座/二等座(票)</h4></span></td>
   <td><Input  name="num4" id="num4" type=text size="15"></td></tr>
   
  </table>
      <button class="btn btn-primary" type="button" name="button" id="button" onclick="addInfo();">修改</button>  
</Form>
</CENTER>

</body>
</html>