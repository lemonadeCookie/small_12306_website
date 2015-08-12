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
    <script type="text/javascript">

function onclick2(trainID){

		if(confirm("确定修改吗？")){
		 window.location="updateTicketInfo.jsp?num=5&&trainID=" + trainID;
		 //document.write(str);    //true
		}else{
		 window.location="updateTicketInfo.jsp?num=5";
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
                        		String trainID = request.getParameter("trainID");
                        		if(trainID != null) AdminTrain.deleteTrainInfo(trainID);
                        		//out.println("trainid"+trainID);
	            			
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
    
  <div class="container-fluid">
    <div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
            	<div class="pull-left">
            	<%
            			 //String s0 = request.getParameter("start");
            			 //String s1 = request.getParameter("destination");
						ResultSet rs = AdminTrain.getAllTrain();
            	 %>
            	</div>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span>选择条件</button>				             
                </div>
            </div>
            <br>   
            <table class="table">
                <thead>
                    <tr class="filters controls controls-row">
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="车次" disabled></th>                                              
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="商务座/软卧上" disabled></th>                                              
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="特等座/软卧中" disabled></th>                                              
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="一等座/软卧下" disabled></th>                                              
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="二等座/硬座" disabled></th>                                              
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="操作" disabled></th>                                              
                   </tr>
                </thead>
                <tbody>
                <%	  
        				  //int i=0;
        				  while(rs.next()){
        				  	         
        				  	  out.print("<form action=\"updateTicketNum.jsp\" method=\"POST\" accept-charset=\"UTF-8\">");
        				  	  out.print("<input type=\"hidden\" name=\"trainID\" id=\"trainID\" value="+rs.getString(1)+">");       				  	          				  	
        				  	  out.println("<tr class=\"controls controls-row\">");
        				  	  out.print("<td><span class=\"span2\">"+rs.getString(1)+"</span></td>");
        				  	  out.print("<td><span class=\"span2\">"+"<input style=\"height:30\" type=\"text\" name=\"num1\" id=\"num1\" value="+rs.getString(3)+">"+"</span></td>");
        				  	  out.print("<td><span class=\"span2\">"+"<input style=\"height:30\" type=\"text\" name=\"num2\" id=\"num2\" value="+rs.getString(4)+">"+"</pan></td>");
        				  	  out.print("<td><span class=\"span2\">"+"<input style=\"height:30\" type=\"text\" name=\"num3\" id=\"num3\" value="+rs.getString(5)+">"+"</span></td>");
        				  	  out.print("<td><span class=\"span2\">"+"<input style=\"height:30\" type=\"text\" name=\"num4\" id=\"num4\" value="+rs.getString(6)+">"+"</span></td>");
        				  	  out.print("<td><span class=\"span2\">"+"<input class=\"btn btn-primary\" type=\"submit\" id=\"login\" value=\"修改\">");        				  	  
        				  	  out.print("<button class=\"btn btn-danger\" type=\"button\" onClick=\"onclick2('"+rs.getString(1)+"')\">删除</button>"+"</span></td>");
        				  	  out.println("</tr>"); 
        				  	  out.print("</form>");
        				  	 // ++i;
        				  
        				  
        				  }
        				  
                 %>
                </tbody>
            </table>
        </div>
    </div>
</div>
	<script type="text/javascript">
	/*
Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
*/
$(document).ready(function(){
    $('.filterable .btn-filter').click(function(){
        var $panel = $(this).parents('.filterable'),
        $filters = $panel.find('.filters input'),
        $tbody = $panel.find('.table tbody');
        if ($filters.prop('disabled') == true) {
            $filters.prop('disabled', false);
            $filters.first().focus();
        } else {
            $filters.val('').prop('disabled', true);
            $tbody.find('.no-result').remove();
            $tbody.find('tr').show();
        }
    });

    $('.filterable .filters input').keyup(function(e){
        /* Ignore tab key */
        var code = e.keyCode || e.which;
        if (code == '9') return;
        /* Useful DOM data and selectors */
        var $input = $(this),
        inputContent = $input.val().toLowerCase(),
        $panel = $input.parents('.filterable'),
        column = $panel.find('.filters th').index($input.parents('th')),
        $table = $panel.find('.table'),
        $rows = $table.find('tbody tr');
        /* Dirtiest filter function ever ;) */
        var $filteredRows = $rows.filter(function(){
            var value = $(this).find('td').eq(column).text().toLowerCase();
            return value.indexOf(inputContent) === -1;
        });
        /* Clean previous no-result if exist */
        $table.find('tbody .no-result').remove();
        /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
        $rows.show();
        $filteredRows.hide();
        /* Prepend no-result row if all rows are filtered */
        if ($filteredRows.length === $rows.length) {
            $table.find('tbody').prepend($('<tr class="no-result span6"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
        }
    });
});
	</script>

</body>
</html>
