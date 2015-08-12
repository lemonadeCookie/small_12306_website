<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <body>
  	<% 
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
    %>
    <%
          String s1=request.getParameter("id");
          ResultSet rs = AdminStation.readImage(s1);
          if(rs.next()){
			Blob b = rs.getBlob("station_pic");
			 int size =(int)b.length();
			 out.print(size);
			 InputStream in=b.getBinaryStream();
  			 byte[] by= new byte[size];
			 response.setContentType("image/jpeg"); 
			 ServletOutputStream sos = response.getOutputStream();
			 int bytesRead = 0;
			 while ((bytesRead = in.read(by)) != -1) {
             	sos.write(by, 0, bytesRead);
			 }
          in.close();
		  sos.flush();
		  }
    	AdminStation.close_db();
    %>  
    
  </body>
</html>
