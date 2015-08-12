<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="UserTicket" class="bootstrap.UserTicket" />
<%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
    <% 
    	String id = UserTicket.checkBuy("46").id;
		String trainID = UserTicket.checkBuy("46").trainID;
		String fromStation= UserTicket.checkBuy("46").fromStation;
		String toStation= UserTicket.checkBuy("46").toStation;
		String train_type= UserTicket.checkBuy("46").train_type;
		String seat_type= UserTicket.checkBuy("46").seat_type;
		String timeDate= UserTicket.checkBuy("46").timeDate;
		String price= UserTicket.checkBuy("46").price;
		String num= UserTicket.checkBuy("46").num;
		
		out.println(" "+id+" "+ trainID + " " + fromStation + " "+ toStation + " "+ train_type+" "+ seat_type+" "+ timeDate+" "+price+" "+ num);
    	
    	//request.setCharactEncoding("utf-8");
    	//接受信息
		 
    	  //String s1=new String(request.getParameter("trainid").getBytes("ISO-8859-1"),"utf8");
          /*out.println("trainid "+request.getParameter("trainid")+"<br>");
          //String s2=new String(request.getParameter("start").getBytes("ISO-8859-1"),"utf8");
          out.println("starts "+request.getParameter("starts")+"<br>");
          //String s3=new String(request.getParameter("destination").getBytes("ISO-8859-1"),"utf8");
          out.println("ends "+request.getParameter("ends")+"<br>");
          out.println("ticketNum "+request.getParameter("ticketNum")+"<br>");
          out.println("seatType "+request.getParameter("seatType")+"<br>");
          out.println("date "+request.getParameter("date")+"<br>");
          
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
		  out.println("price----"+allPriceStr);*/
          
        // 插入购票信息
       // UserTicket.insertUserInfo(trainid, chineseSeat,starts,ends,ticketNum,allPriceStr,bookDate);
    	// 已知始发站和终点站 日期 显示车次与座位信息（余票查询）
    	/*ArrayList<String> trainIdList1 = new ArrayList<String>();
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
		}*/
		
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
		//UserTicket.updateAllTickets(trainid,seatType, starts, ends, num, date);	
		//out.println("取票号码"+UserTicket.getCheckNum());
		//out.println("price-num4  "+UserTicket.calculatePrice(trainid,seatType, starts, ends,"1"));
    %>
  </body>
</html>
