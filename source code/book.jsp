<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./css/bootstrap.css" rel="stylesheet" media="screen">
    
    <link rel="stylesheet" type="text/css" href="css/mystyle.css" />
	<script src="./js/TweenLite.min.js"></script>
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

  </head>
  
  <body>
  <%
  
      	//接受信息
    	  String s1=new String(request.getParameter("trainid").getBytes("ISO-8859-1"),"utf8");
          //out.println("trainid "+s1+"<br>");
          String s2=request.getParameter("starts");
          //out.println("starts "+s2+"<br>");
          String s3=request.getParameter("ends");
          //out.println("ends "+s3+"<br>");
          String s4=new String(request.getParameter("date").getBytes("ISO-8859-1"),"utf8");
          //out.println("date "+s4+"<br>");
  
  
   %>
    This is my JSP page. <br>
    
    
    <div class="container">
    <div class="row">
        <h4>
            Simple Pricing Table
        </h4>

        <div class="col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h4 class="text-center">确定订单</h4>
                </div>
                <div class="panel-body text-center">
                    <p class="lead">
                        <strong>$10 / month</strong></p>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item"><i class="icon-ok text-danger"></i>Personal use</li>
                    <li class="list-group-item"><i class="icon-ok text-danger"></i>Unlimited projects</li>
                    <li class="list-group-item"><i class="icon-ok text-danger"></i>27/7 support</li>
                </ul>
                <center>

                <div class="input-group number-spinner">
                     预定票数		
                    <span class="input-group-btn">			
					<button class="btn btn-primary btn-mini">-</button>
					</span>					
					<input type="text" class="input-small form-control input-number text-center"  value="1">					
					<span class="input-group-btn">	
					<button class="btn btn-primary btn-mini" data-dir="up">+</button>	
					</span>					
			    </div>
			    </center>
                <div class="panel-footer">
                    <a class="btn btn-lg btn-block btn-success" href="http://www.jquery2dotnet.com">BUY
                        NOW!</a>
                </div>
            </div>
        </div>
 
	<script type="text/javascript">
	$(document).on('click', '.number-spinner button', function () {    
	var btn = $(this),
		oldValue = btn.closest('.number-spinner').find('input').val().trim(),
		newVal = 0;
	
	if (btn.attr('data-dir') == 'up') {
		newVal = parseInt(oldValue) + 1;
	} else {
		if (oldValue > 1) {
			newVal = parseInt(oldValue) - 1;
		} else {
			newVal = 1;
		}
	}
	btn.closest('.number-spinner').find('input').val(newVal);
});
	</script>
    
  </body>
</html>
