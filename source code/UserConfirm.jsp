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
	<script language=javascript>  
		function backTo() { 
			  if (confirm('已经付款？')) { 
					 window.location="conductor.jsp?checkid=" + document.getElementById('checkid').value;
			  }else{
			  		 window.location="UserConfirm.jsp?checkNum=" + document.getElementById('checkid').value;
			  
			  }
		 } 
 	 </script>
  </head>

  
  <body>
    <%
    if(session.getAttribute("name") != "conductor")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
    %>
    <% 
    	//request.setCharactEncoding("utf-8");
    	//接受信息      
    	String s1=request.getParameter("checkNum");
    	//out.println(s1+"!!!");
    	   
    	String id = UserTicket.checkBuy(s1).id;
		String trainID = UserTicket.checkBuy(s1).trainID;
		String fromStation= UserTicket.checkBuy(s1).fromStation;
		String toStation= UserTicket.checkBuy(s1).toStation;
		String train_type= UserTicket.checkBuy(s1).train_type;
		String seat_type= UserTicket.checkBuy(s1).seat_type;
		String timeDate= UserTicket.checkBuy(s1).timeDate;
		String price= UserTicket.checkBuy(s1).price;
		String num= UserTicket.checkBuy(s1).num;
		
		out.println("<input type=\"hidden\" name=\"checkid\" id=\"checkid\" value="+id+">");
		
    %>
    <br><br><br><br>   
    <div class="container">
    <div class="row">

        <div class="col-md-4">
            <div class="panel panel-success">
            <center>
                <div class="panel-heading">
                    <h2 class="text-center">订票信息</h4>
                </div>


                
                <table class="table table-bordered">
                  <tr class="info">
				    <td>车次</td>
				    <td><%out.println(trainID); %></td>
				  </tr>
                  <tr class="warning">
				    <td>日期</td>
				    <td><%out.println(timeDate); %></td>
				  </tr>
				  <tr class="info">
				    <td>类型</td>
				    <td><%out.println(train_type); %></td>
				  </tr>
				  
				</table>

				
				<table class="table table-bordered">
                  <tr class="error">
				    <td>出发站</td>
				    <td><% out.println(fromStation);%></td>
				  </tr>
				    <tr class="info">
				    <td>到达站</td>
				    <td><% out.println(toStation);%></td>
				  </tr>
				</table>
				
				<table class="table table-bordered">
                  <tr class="success">
				    <td>座位类型</td>
				    <td>
		                <%out.println(seat_type);%>			    				 				    
				    </td>
				    <td>购票数量</td>
				    <td>
		                <%out.println(num);%>			    				 				    				    				 				    
				    </td>
				  </tr>
				</table>
				
				<table class="table table-bordered">
                  <tr class="info">
				    <td>购票码</td>
				    <td>
		                <%out.println(id);%>			    				 				    
				    </td>
				  </tr>
				  <tr class="warning">
				    <td>总金额</td>
				    <td>
		                <%out.println(""+price+" (元)");%>			    				 				    				    				 				    
				    </td>
				  </tr>
				</table>

                <div class="panel-footer">
				<table class="table table-bordered">
				<object id=wb height=0 width=0 classid=clsid:8856f961-340a-11d0-a96b-00c04fd705a2 name=wb></object>
                  <tr class="success">
                  
				    <td><center><style media="print">.printer {display:none;}</style><button class="btn btn-success printer" onclick="window.print()" type="button" >车票打印</button> </center></td>
				    
				    <td><center><button class="btn btn-info" type="button" onclick="backTo()">确定付款</button> </center></td>
				    
				  </tr>
				</table>               
				 </div>
            </center>
            </div>
        </div>
 

    
  </body>

</html>
