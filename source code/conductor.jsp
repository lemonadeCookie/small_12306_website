<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <link href="./css/bootstrap.min.css" rel="stylesheet" media="screen" id="bootstrap-css">
    <link href="./css/bootstrap.css" rel="stylesheet" media="screen">
    
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery-1.10.2.min.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css" />
	<script src="./js/jquery-1.10.2.min.js"></script>
	
    <style type="text/css">
    #custom-search-form {
        margin:0;
        margin-top: 320px;
        padding: 0;
    }
 
    #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
        -webkit-transition: width  0.2s ease-in-out;
    -moz-transition:width  0.2s ease-in-out;
    -o-transition: width  0.2s ease-in-out;
    transition: width  0.2s ease-in-out;
    }
 
    #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }
 
    .search-query:focus + button {
        z-index: 3;   
    }   
    .search-query:focus{
        width: 260px;
    }  
    </style>
  </head>
  
  <body>
  <% 
  	if(session.getAttribute("name") != "conductor")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
  %>
  <%
  	String s1=request.getParameter("checkid");
  	//out.println(s1+"1111");
  	if(s1 != null)	
  	UserTicket.deleteInfo(s1);
  
   %>
 <center>
 <div class="container">
	<div class="row">	
        <div class="span12">
            <form method="post" accept-charset="UTF-8" action="UserConfirm.jsp" id="custom-search-form" class="form-search form-horizontal pull-right">
                <div class="input-append span12">
                    <input type="text" id="checkNum" name="checkNum" style="height:30; width:500"class="search-query mac-style" placeholder="Search">
                    <button type="submit" id="button" name="button" class="btn"><i class="icon-search"></i></button>
                </div>
            </form>
        </div>
	</div>
</div>
</center>
  </body>
</html>
