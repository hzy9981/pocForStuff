<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>已审批的理赔单</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 公共css -->
<%@include file="common/commoncss.jsp"%>
<!-- 自定义css -->
<link rel="stylesheet" type="text/css" href="../../pocForStuff/css/onlineChat.css">
  </head>
  
  <body>
    <div id="wrapper">
<!-- 正文内容开始 -->
		<div id="page-wrapper">
			<div class="container-fluid">
			
			<div class="queAnswer" id="console-container">
                         <div id="console"></div>  
			</div>
			<br>
            <input type="text" placeholder="请输入内容" id="chat" />  
            
			</div>
			</div>
			<%@include file="common/common.jsp" %>
			</div>
  </body>
   <!-- 公共js -->
    <%@include file="common/commonjs.jsp"%>
 <!--   <!-- Common js -->
  <script src='<%=basePath%>js/common.js'></script>
  <!--  自定义js-->
  <script src='<%=basePath%>js/onlineChat.js'></script>
</html>
