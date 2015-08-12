<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="UserTicket" class="bootstrap.UserTicket" />

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
      window.onload=function(){
      $('.selectpicker').selectpicker();
      };
    </script>
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
  
  <body>

    <div class="page-header">
        <!--  <h1>12306订票系统<span class="pull-right label label-default">:)</span></h1>-->
		<img src="ticketLogo.png" width="360" height="280"/>    
    </div>
    <div class="container">
		<div class="row">
	        <div class="span12">
	            <form method="post" accept-charset="UTF-8" action="UserBuy.jsp" class="form-inline" >
	            
	                <input name="start" class="span4" type="text" style="height:28" placeholder="出发地" >
	                <input name="destination" class="span4" type="text" style="height:28" placeholder="目的地">	                
	                <select name="date">
						  <option value="1">2014/11/23</option>
						  <option value="2">2014/11/24</option>
						  <option value="3">2014/11/25</option>
					</select>
	                <button type="submit" class="btn btn-primary" style="height:28"> <i class="icon-search icon-white"></i></button>
	            </form>
	        </div>
	    </div>
	
    <div class="row">
        <div class="col-md-12">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
               
                        <ul class="nav nav-tabs">
                        	<li>&nbsp&nbsp&nbsp&nbsp</li>
                        	<%
                        		String sd = request.getParameter("date");
                        		String s0 = request.getParameter("start");
            				    String s1 = request.getParameter("destination");
	            			
                        		if(sd == null){
                        		    out.println("<li class=\"active\"><a href=\"UserBuy.jsp?date=1&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/23</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=2&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/24</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=3&&start="+s0+"&&destination"+s1+"\" data-toggle=\"tab\">"+"2014/11/25</a></li>");          		                               		
                        		}                                             		
                        		else if(sd.equals("2")){
                        			out.println("<li><a href=\"UserBuy.jsp?date=1&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/23</a></li>");
                        			out.println("<li class=\"active\"><a href=\"UserBuy.jsp?date=2&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/24</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=3&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/25</a></li>");
                        		}
                        		else if(sd.equals("3")){
                                    out.println("<li><a href=\"UserBuy.jsp?date=1&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/23</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=2&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/24</a></li>");
                        			out.println("<li class=\"active\"><a href=\"UserBuy.jsp?date=3&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/25</a></li>");          		          		
                        		}else{
                        		    out.println("<li class=\"active\"><a href=\"UserBuy.jsp?date=1&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/23</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=2&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/24</a></li>");
                        			out.println("<li><a href=\"UserBuy.jsp?date=3&&start="+s0+"&&destination="+s1+"\" data-toggle=\"tab\">"+"2014/11/25</a></li>");          		                               		
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
            			 if(s0 != null && s1 != null){           	            	
            			  	out.println(s0+"------"+s1);
            			 }
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
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="类型" disabled></th>
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="商务座/软卧上" disabled></th>
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="特等座/软卧中" disabled></th>
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="一等座/软卧下" disabled></th>
                        <th><input type="text" class="form-control span2" style="height:28;color:#0080FF" placeholder="二等座/硬座" disabled></th>
                        
                    </tr>
                </thead>
                <tbody>
                <%	 
        				  if((s0 != null)&&(s1 != null)&&(sd != null)){
        				  
        				    ArrayList<String> trainIdList1 = new ArrayList<String>();
							trainIdList1=UserTicket.getAllTrainForInfo(s0,s1,sd);
							for(String j:trainIdList1){
								out.println("<tr class=\"controls controls-row\">");
								out.println("<td><span class=\"span2\">"+j+"</span></td>");	 
								out.println("<td><span class=\"span2\">"+UserTicket.chineseType(j)+"</span></td>");	 								
								UserTicket.calculateTicket(j,s0,s1,sd);
								for(int m:UserTicket.calculateFourTicket){
									out.println("<td><span class=\"span2\">"+m+"</td>");
								}
								out.println("<td><a href='bookNew.jsp?trainid="+j+"&&starts="+s0+"&&ends="+s1+"&&date="+sd+"'><span class=\"span2\"><button class=\"btn btn-primary\" type=\"button\">预定</button></a></TD>");
								out.println("</tr>");
							}
	  
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
            $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
        }
    });
});
	</script>
</body>
</html>
