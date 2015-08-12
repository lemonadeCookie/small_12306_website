<%@page language="java" import="java.util.*,java.io.*,java.sql.*,com.jspsmart.upload.*" pageEncoding="utf-8"%>
<jsp:useBean id="AdminStation" class="bootstrap.AdminStation" />

<!-- SmartUpload组件用到的文件上传类 -->
<% 
  	if(session.getAttribute("name")!="root")   //如果index.jsp页面获取的数据为空 
	{
	   response.sendRedirect("index.jsp");//跳转到index.jsp页面
	}
%>
<%

	
	//设置request范围字符集
	request.setCharacterEncoding("utf-8");
	//取得整个web应用的物理根路径（注意不是jsp项目根路径）
	String root = request.getSession().getServletContext().getRealPath("/");
	//设置上传文件的保存路径（绝对路径/物理路径www.mwcly.cn）
	String savePath = root + "/stationImage";
	//声明SmartUpload类对象
	SmartUpload mySmartUpload = new SmartUpload();
	String s1=request.getParameter("id");  
	

	try { 
		//初始化的方法必须先执行
		//参数：config,request,response都是jsp内置对象
		mySmartUpload.initialize(config,request,response);
		//上传文件数据
		mySmartUpload.upload();
		//将全部上传文件保存到指定目录下
		mySmartUpload.save(savePath);
		//取得文件名(因为只上传一个文件，所以用getFile(0))
		String fileName = mySmartUpload.getFiles().getFile(0).getFileName();
		//Class.forName(className);
		//conn=DriverManager.getConnection(url, user, password);
		AdminStation.updateStationImg(fileName, s1);
		 
		 String temp= java.net.URLEncoder.encode(s1.toString(),"utf-8"); 
		response.sendRedirect("stationDetails.jsp?id="+temp);

	} catch (Exception e){
		
		System.out.println("Error : " + e.toString()); 
		String temp= java.net.URLEncoder.encode(s1.toString(),"utf-8"); 
		response.sendRedirect("stationDetails.jsp?id="+temp);

} 

%>

