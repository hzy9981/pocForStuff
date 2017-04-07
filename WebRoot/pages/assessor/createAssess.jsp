<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创建定损单</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 公共css -->
<%@include file="../common/commoncss.jsp"%>
<!-- 自定义css -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/createAssess.css">
  </head>
  
  <body>
     <div id="wrapper">
<!-- 正文内容开始 -->
		<div id="page-wrapper">
			<div class="container-fluid">
			<div class="formBorder">
			<form id="assessForm">
			<h2><strong>创建定损单</strong></h2>
			<!-- 第一部分表单填写 -->
			<div>
			<div class="form-control part1">
			<label>车辆车牌</label>
			<input type="text" name="plateNumber">
			</div>
			<div class="form-control part1">
			<label>申请用户</label>
			<input type="text" name="applyUser">
			</div>
			<div class="form-control part1">
			<label>用户电话</label>
			<input type="text" name="applyUserPhone">
			</div>
			<div class="form-control part1">
			<label>估算金额</label>
			<input type="text" name="sum">
			</div>
			</div>
			<!-- 第二部分图片上传 -->
			<div></div>
			<!-- 第三部分按钮控件 -->
			<div class="line_01">图 片 上 传</div>
			<div></div>
			
			</form>
			</div>
			</div>
			</div>
			<%@include file="../common/common.jsp" %>
			</div>
  </body>
   <!-- 公共js -->
    <%@include file="../common/commonjs.jsp"%>
 <!--   <!-- Common js -->
  <script src='<%=basePath%>js/common.js'></script>
   <script src='<%=basePath%>js/commonAssessor.js'></script>
  <!--  自定义js-->
  
</html>
