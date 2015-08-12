<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css" />
	<script src="./js/TweenLite.min.js"></script>
    
  </head>
  <body>
            <div class="container">
            	<div class="span12">
                <div class="row vertical-offset-100">
                	<br><br><br>
                	<div class="span4">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">                                
                                <div class="row-fluid user-row">
                                    <br>
                                    <img src="adminLogo.png" class="img-responsive" alt="Conxole Admin"/>
                                </div>
                            </div>
                            <div class="panel-body">
                            	<br><br>
                            	<center>
                                <form action="servlet/UserLogin" method="POST" accept-charset="UTF-8" class="form-signin">
                                        <input class="form-control" placeholder="用户名" name="userName" type="text"></br>
                                        <input class="form-control" placeholder="密码" name="userPassword" type="password">
                                        <br>
										<input class="radio" name="type" type="radio" value="Admin" checked> 管理员
										<input class="radio" name="type" type="radio" value="Conductor"> 售票员
										<br><br>

                                        <input class="btn btn-primary btn-lg btn-info btn-block" type="submit" id="login" value="登录 >>">
                                </form>
                                </center>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
           </div>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
    
  </body>
</html>
