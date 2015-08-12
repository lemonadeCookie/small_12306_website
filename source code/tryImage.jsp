<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type"content="text/html; charset=utf-8">

<title>上传图片</title>

</head>

<body>

<!-- 注意表单的enctype属性应该为：multipart/form-data -->

<form action="smartupload.jsp"method="post"enctype="multipart/form-data">

<table width="400" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#cccccc">

<tr bgcolor="#EEEEEE"align="center"><tdcolspan="2">上传照片</td></tr>


<tr bgcolor="#ffffff">

<td>照片：</td>

<td><input type="file" name="upfile"/></td>

</tr>

<tr bgcolor="#ffffff">

<td colspan="2"><input type="submit" value="提交"/></td>

</tr>

</table>

</form>

</body>

</html>