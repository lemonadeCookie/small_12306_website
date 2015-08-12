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

<script type="text/javascript">

function onclick1(){
	
	var seatType = document.getElementById("seatType").value;
	var ticketNumMost = document.getElementById(seatType).value;
	var ticketNum = document.getElementById("ticketNum").value;
	if(parseInt(""+ticketNumMost) >= parseInt(""+ticketNum)){
		alert("ok");
		if(confirm("确定修改吗？")){
		 window.location="bookNext.jsp?trainid=" + document.getElementById('trainid').value+
		 "&&starts=" + document.getElementById('starts').value+
		 "&&ends=" + document.getElementById('ends').value+
		 "&&ticketNum=" + ticketNum+
		 "&&seatType=" + seatType+
		 "&&date=" + escape(document.getElementById('date').value);
		 //document.write(str);    //true
		}else{
		 window.location="bookNew.jsp?trainid=" + document.getElementById('trainid').value+
		 "&&starts=" + document.getElementById('starts').value+
		 "&&ends=" + document.getElementById('ends').value+
		 "&&date=" + escape(document.getElementById('date').value);
		}
	}else{	
		alert("对不起，您的票买多了，所选车次的所选座位类型最多可买票数为"+ticketNumMost+" 张");
	}	
}
</script>
  </head>

  
  <body>
  <%
  
      	//接受信息
      	
      	     	
    	  String s1=request.getParameter("trainid");
    	  String type = UserTicket.trainType(s1);
          //out.println("type"+type+"<br>");
          //out.println("trainid  "+s1+"<br>");
          String s2=request.getParameter("starts");
          //out.println("starts "+s2+"<br>");
          String s3=request.getParameter("ends");
         // out.println("ends "+s3+"<br>");
          String s4=request.getParameter("date");
          //out.println("date "+s4+"<br>");
          
          out.println("<input type=\"hidden\" name=\"trainid\" id=\"trainid\" value="+s1+">");
          out.println("<input type=\"hidden\" name=\"starts\" id=\"starts\" value="+s2+">");
          out.println("<input type=\"hidden\" name=\"ends\" id=\"ends\" value="+s3+">");
          out.println("<input type=\"hidden\" name=\"date\" id=\"date\" value="+s4+">");
          
          double priceNum1 = UserTicket.calculatePrice(s1,"num1", s2, s3,s4);
          double priceNum2 = UserTicket.calculatePrice(s1,"num2", s2, s3,s4);
          double priceNum3 = UserTicket.calculatePrice(s1,"num3", s2, s3,s4);
          double priceNum4 = UserTicket.calculatePrice(s1,"num4", s2, s3,s4);
          
          UserTicket.calculateTicket(s1,s2,s3,s4);         
          int num1 = UserTicket.calculateFourTicket.get(0);
          int num2 = UserTicket.calculateFourTicket.get(1);
          int num3 = UserTicket.calculateFourTicket.get(2);
          int num4 = UserTicket.calculateFourTicket.get(3);
          out.println("<input type=\"hidden\" name=\"num1\" id=\"num1\" value="+num1+">");
          out.println("<input type=\"hidden\" name=\"num2\" id=\"num2\" value="+num2+">");
          out.println("<input type=\"hidden\" name=\"num3\" id=\"num3\" value="+num3+">");
          out.println("<input type=\"hidden\" name=\"num4\" id=\"num4\" value="+num4+">");
           //out.println("num1  "+num1+"<br>");
           //out.println("num2  "+num2+"<br>");
          // out.println("num3  "+num3+"<br>");
          // out.println("num4  "+num4+"<br>");
          
           
  
   %>
    
    <br><br><br>
    <div class="container">
    <div class="row">

        <div class="col-md-4">
            <div class="panel panel-success">
            <center>
                <div class="panel-heading">
                    <h2 class="text-center">确定订单</h4>
                </div>


                
                <table class="table table-bordered">
                  <tr class="info">
				    <td>车次</td>
				    <td><%out.println(s1); %></td>
				  </tr>
                  <tr class="warning">
				    <td>日期</td>
				    <td><%out.println(UserTicket.checkDate(s4)); %></td>
				  </tr>
				  <tr class="info">
				    <td>类型</td>
				    <td><%out.println(UserTicket.chineseType(s1)); %></td>
				  </tr>
				  
				</table>

				
				<table class="table table-bordered">
                  <tr class="error">
				    <td>出发站</td>
				    <td><% out.println(s2);%></td>
				  </tr>
				    <tr class="info">
				    <td>到达站</td>
				    <td><% out.println(s3);%></td>
				  </tr>
				</table>
				
				<table class="table table-bordered">
                  <tr class="success">
				    <td>座位类型选择</td>
				    <td>
		                <select id="seatType">
		                <%
			                if(type == "T"){
			                	out.println("<option value=\"num1\">软卧上("+priceNum1+"元/张)</option>");
			                	out.println("<option value=\"num2\">软卧中("+priceNum2+"元/张)</option>");
			                	out.println("<option value=\"num3\">软卧下("+priceNum3+"元/张)</option>");
			                	out.println("<option value=\"num4\">硬座("+priceNum4+"元/张)</option>");	             	                	                
			                }else{
			                	out.println("<option value=\"num1\">商务座("+priceNum1+"元/张)</option>");
			                	out.println("<option value=\"num2\">特等座("+priceNum2+"元/张)</option>");
			                	out.println("<option value=\"num3\">一等座("+priceNum3+"元/张)</option>");
			                	out.println("<option value=\"num4\">二等座("+priceNum4+"元/张)</option>");		                
			                
			                }            
		                 %>
						</select>				    				 				    
				    </td>
				    <td>座位数量选择</td>
				    <td>
			            <select id="ticketNum">
							  <option value="1">1</option>
							  <option value="2">2</option>
							  <option value="3">3</option>
							  <option value="4">4</option>
							  <option value="5">5</option>
						</select>				    				 				    
				    </td>
				  </tr>
				</table>

								


                <div class="panel-footer">
                <button class="btn btn-success" type="button" onClick="onclick1()">确认提交</button>
                </div>
            </center>
            </div>
        </div>
 

    
  </body>

</html>
