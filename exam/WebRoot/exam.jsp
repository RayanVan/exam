<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考试页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <c:out value="${user.name}"/>同学，您好！<br>
  <center>
  <h2>单项选择题</h2>
  <form action="login/submit" method="post"> 
  1.一个完整的微型计算机系统应包括_____。  <br>
  <input type="checkbox" name="first" value="A">A.计算机及外部设备
   <input type="checkbox" name="first" value="B">B.主机箱、键盘、显示器和打印机<br>
  <input type="checkbox" name="first" value="C">C.硬件系统和软件系统
  <input type="checkbox" name="first" value="D">D.系统软件和系统硬件<br>
     
  2. 十六进制1000转换成十进制数是_____。  <br>
  <input type="checkbox" name="second" value="A"> A.4096
   <input type="checkbox" name="second" value="B">B.1024<br>
  <input type="checkbox" name="second" value="C">C.2048
  <input type="checkbox" name="second" value="D">D.8192<br>
  
	3. ENTER键是_____。  <br>
  <input type="checkbox" name="third" value="A">A.输入键
   <input type="checkbox" name="third" value="B">B.回车换行键<br>
  <input type="checkbox" name="third" value="C">C.空格键
  <input type="checkbox" name="third" value="D">D.换挡键<br>
  
  4. 3.5英寸的软盘，写保护窗口上有一个滑块，将滑块推向一侧，使其写保护窗口暴露出来，此时_____。  <br>
  <input type="checkbox" name="forth" value="A">A.只能写盘，不能读盘
   <input type="checkbox" name="forth" value="B">B.只能读盘，不能写盘<br>
  <input type="checkbox" name="forth" value="C">C.既可写盘，又可读盘
  <input type="checkbox" name="forth" value="D">D.不能写盘，也不能读盘<br>
  
   5. 3.5英寸盘的右下角有一塑料滑片，当移动它盖住缺口时_____。  <br>
  <input type="checkbox" name="fifth" value="A">A.不能读出原有信息，不能写入新的信息
   <input type="checkbox" name="fifth" value="B">B.既能读出原有信息，也能写入新的信息<br>
  <input type="checkbox" name="fifth" value="C">C.不能读出原有信息，可以写入新的信息
  <input type="checkbox" name="fifth" value="D">D.可以读出原有信息，不能写入新的信息<br>
  <input type="submit" value="提交"/>
  </form>
     </center>
  </body>
</html>
