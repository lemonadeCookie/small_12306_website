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
  <script>
	function get1()
	{
		 if(confirm("确定修改吗？")){
		 window.location="stationDetails.jsp?id=" + document.getElementById('station1').value+
		 "&&name1=" + document.getElementById('station1').value+
		 "&&name2=" + document.getElementById('station2').value+
		 "&&dist=" + escape(document.getElementById('textBox').value);
		}else{
		window.location="stationDetails.jsp?id=" + document.getElementById('station1').value;
		}
	}
	
	function getName(){
		if(confirm("确定修改吗？")){
		 window.location="stationDetails.jsp?id=" + document.getElementById('textBox1').value
		 +"&&id1="+document.getElementById('station1').value;
		 //document.write(str);    //true
		}else{
		window.location="stationDetails.jsp?id=" + document.getElementById('station1').value;
		}
	}
	
	</script>
  <body>
      <div class="page-header">
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
	</div>
  
  
    <div class="container-fluid" >  
    <div class="row-fluid" > 
    <div class="span5" >  
    <%
          String s1=request.getParameter("id");
          out.println("<h3> "+s1+"</h3>");
          String s2=request.getParameter("name1");
          String s3=request.getParameter("name2");
          String s4=request.getParameter("dist");
          String s5=request.getParameter("id1");
          if(s4 != null){
          int dis = Integer.parseInt(s4);
          AdminStation.updateDistance(s2,s3,dis);         
          }
          if(s5 != null){
          AdminStation.updateStationName(s5, s1);
          }
         String img = AdminStation.readImageName(s1);
		%>
       
      	  <%
      	  out.print("<table class=\"table table-bordered table-condensed\">");	
      	  out.print("<tr bgcolor=\"#ffffff\" class=\"error\">");  	  
          out.print("<td>");
          out.print("<a href=\""+img+"\" class=\"thumbnail\">");        
          out.print("<img width=\"500\" height=\"300\" src=\""+img+"\" alt=\""+img+"\"></a></td>");
          out.print("</tr>");
          %>
          
         
        
         <% 
		out.print("<form action=\"smartupload.jsp?id="+s1+"\" method=\"post\" enctype=\"multipart/form-data\">");
		out.print("<tr>");
		out.print("</tr>");
		out.print("<tr bgcolor=\"#ffffff\" class=\"info\">");
		out.print("<td><input type=\"file\" name=\"upfile\"/></td></tr>");
		out.print("</tr><tr bgcolor=\"#ffffff\" class=\"error\"><td colspan=\"2\"><input type=\"submit\" value=\"提交\"/></td></tr></table></form>");		
		%>
		
	</div>	
		
    <div class="span7">
    	<div class="span1"></div>
		<div class="span11">
		<%		
		out.print("<br><br><br>");
      	out.print("<Table class=\"table table-bordered\">"); 
    	out.print("<TR>"); 
		out.print("<TD >"+"车站名"+"</TD>"); 
		out.print("<TD >"+"<input style=\"height:30\" type=\"text\" name=\"textBox1\" id=\"textBox1\" value=\""+s1+"\">"+"</TD>");
		out.print("<td>"+"<input class=\"btn btn-danger\" style=\"height:30\" type=\"button\" name=\"button1\" id=\"button1\" value=\"修改\" onclick=\"getName();\" />"+"</td>");
		
		out.print("<TR>"); 
  		out.print("</table>");
  	
    	ResultSet rs_station = AdminStation.getAllDistance(s1);
    	out.print("<Table class=\"table table-bordered table-hover \">"); 
    	out.print("<TR class=\"info\">"); 
		out.print("<TD width=\"20\">"+"车站"+"</TD>"); 
		out.print("<TD width=\"20\">"+"相邻车站"+"</TD>"); 
		out.print("<TD width=\"20\">"+"距离(/km)"+"</TD>"); 
		out.print("<TD width=\"20\">"+"操作"+"</TD>");

		out.print("</TR>") ; 
    	while(rs_station.next()) 
		{ out.print("<TR>"); 
		out.print("<TD width=\"20\">"+"<input style=\"height:30\" type=\"text\" name=\"station1\" id=\"station1\" value=\""+rs_station.getString(1)+"\"disabled>"+"</TD>"); 
		out.print("<TD width=\"20\">"+"<input style=\"height:30\" type=\"text\" name=\"station2\" id=\"station2\" value=\""+rs_station.getString(2)+"\"disabled>"+"</TD>"); 

		String distance = rs_station.getString(3);
		out.print("<TD width=\"20\">"+"<input style=\"height:30\" type=\"text\" name=\"textBox\" id=\"textBox\" value=\""+distance+"\">"+"</TD>");
		out.print("<td width=\"20\">"+"<input class=\"btn btn-danger\" style=\"height:30\" type=\"button\" name=\"button\" id=\"button\" value=\"修改\" onclick=\"get1();\" />"+"</td>");
		out.print("</TR>") ; 
		} 
    	out.print("</Table>"); 
    	AdminStation.close_db();
    %>  
    </div>
    </div>
  </div>
  
  </div>
  
  </body>
</html>
