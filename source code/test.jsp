<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="UserTicket" class="bootstrap.UserTicket" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
    <% 
    	//request.setCharactEncoding("utf-8");
    	//接受信息
    	  /*String s1=new String(request.getParameter("date").getBytes("ISO-8859-1"),"utf8");
          out.println("date "+s1+"<br>");
          String s2=new String(request.getParameter("start").getBytes("ISO-8859-1"),"utf8");
          out.println("start "+s2+"<br>");
          String s3=new String(request.getParameter("destination").getBytes("ISO-8859-1"),"utf8");
          out.println("destination "+s3+"<br>");*/
          
        // 插入购票信息
        UserTicket.insertUserInfo("G1001", "特等座","天津西站","南京南站","3","1234","2014-11-8");
    	// 已知始发站和终点站 日期 显示车次与座位信息（余票查询）
    	ArrayList<String> trainIdList1 = new ArrayList<String>();
    	String s5 = "天津西站";
    	String s6 = "徐州东站";
    	out.print(s5+" "+s6);
    	out.println("<br>");
		trainIdList1=UserTicket.getAllTrainForInfo(s5,s6,"1");
		for(String j:trainIdList1){
			out.println(j+"");
			UserTicket.calculateTicket(j,s5,s6,"1");
			for(int m:UserTicket.calculateFourTicket){
				out.println(m+" ");
			}
			out.println("<br>");
		}
		
		// 输入购买票的数量、类型 系统返回一个订票号码
		//1 update票
		//2 存入订票的数据库
			// 测试距离参数
			/*int dis = UserTicket.calculateDistance("G1001", s1, s2);
			out.println("<br>");
			out.println("dis" + dis);
			// 测试票价
			out.println("<br>");
			out.println("price-num4  "+UserTicket.calculatePrice("G1001", "num4", s1, s2));
			// 测试更新  G1001 num4 s1 减少两张票
			UserTicket.updateNum("G1001","num4",s1,2);
			// 测试更新全部
			UserTicket.updateAllTickets("G1001", "num4", s1, s2, 2);*/
		
		
    %>
  </body>
</html>
