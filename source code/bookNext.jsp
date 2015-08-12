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
  </head>

  
  <body>
    <% 
    	//request.setCharactEncoding("utf-8");
    	//接受信息         
          String trainid = request.getParameter("trainid");//|
          String starts = request.getParameter("starts");//|
          String ends = request.getParameter("ends");//|
          String ticketNum = request.getParameter("ticketNum");//|
          String seatType = request.getParameter("seatType");//---|
          String date = request.getParameter("date");//---
          
          String type = UserTicket.chineseType(trainid);
          
          String chineseSeat = null;//!
          String bookDate = null;//!
          
          if(date.equals("1")) bookDate = "2014-11-23";
          if(date.equals("2")) bookDate = "2014-11-24";
          if(date.equals("3")) bookDate = "2014-11-25";
                   
          if(type == null){
          }
          else if(type.equals("T")){
            if(seatType.equals("num1")) chineseSeat="软卧上";
          	if(seatType.equals("num2")) chineseSeat="软卧中";
           	if(seatType.equals("num3")) chineseSeat="软卧下";
           	if(seatType.equals("num4")) chineseSeat="硬卧";   
     	         	
          }else{
           	if(seatType.equals("num1")) chineseSeat="商务座";
          	if(seatType.equals("num2")) chineseSeat="特等座";
           	if(seatType.equals("num3")) chineseSeat="一等座";
           	if(seatType.equals("num4")) chineseSeat="二等座";                   
          }
          //价格
          int num = Integer.parseInt(ticketNum); 
          double allPrice = num*(UserTicket.calculatePrice(trainid, seatType, starts, ends, date));
		  String allPriceStr = ""+allPrice;
          
       	  // 插入购票信息
          UserTicket.insertUserInfo(trainid, chineseSeat,starts,ends,ticketNum,allPriceStr,bookDate);
 
		  UserTicket.updateAllTickets(trainid,seatType, starts, ends, num, date);	
		  int checkNum = UserTicket.getCheckNum();
		  //out.println("取票号码"+checkNum);
    %>
    <br><br><br>
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
				    <td><%out.println(trainid); %></td>
				  </tr>
                  <tr class="warning">
				    <td>日期</td>
				    <td><%out.println(bookDate); %></td>
				  </tr>
				  <tr class="info">
				    <td>类型</td>
				    <td><%out.println(UserTicket.chineseType(trainid)); %></td>
				  </tr>
				  
				</table>

				
				<table class="table table-bordered">
                  <tr class="error">
				    <td>出发站</td>
				    <td><% out.println(starts);%></td>
				  </tr>
				    <tr class="info">
				    <td>到达站</td>
				    <td><% out.println(ends);%></td>
				  </tr>
				</table>
				
				<table class="table table-bordered">
                  <tr class="success">
				    <td>座位类型</td>
				    <td>
		                <%out.println(chineseSeat);%>			    				 				    
				    </td>
				    <td>购票数量</td>
				    <td>
		                <%out.println(ticketNum);%>			    				 				    				    				 				    
				    </td>
				  </tr>
				</table>
				
				<table class="table table-bordered">
                  <tr class="info">
				    <td>购票码</td>
				    <td>
		                <%out.println(checkNum);%>			    				 				    
				    </td>
				  </tr>
				  <tr class="warning">
				    <td>总金额</td>
				    <td>
		                <%out.println(""+allPrice+" (元)");%>			    				 				    				    				 				    
				    </td>
				  </tr>
				</table>

								


                <div class="panel-footer">
				<table class="table table-bordered">
                  <tr class="success">
				    <td><center>订票成功！请凭购票码和证件到售票处取票并付费!</center></td>
				  </tr>
				</table>               
				 </div>
            </center>
            </div>
        </div>
 

    
  </body>

</html>
