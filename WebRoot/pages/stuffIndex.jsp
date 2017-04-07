<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>员工主页</title>
  <!-- 公共css -->
<%@include file="common/commoncss.jsp"%>
<!-- 自定义css -->
<link href="../../pocForStuff/css/stuffIndex.css" rel="stylesheet">
  </head>
  
  <body>
   <div id="wrapper">
<!-- 正文内容开始 -->
		<div id="page-wrapper">
			<div class="container-fluid">
			<div id="assessorToolMenu" class="toolMenu">
			<h3>定损相关</h3>
			<a href="<%=basePath%>pages/assessor/createAssess.jsp"><img src="../../pocForStuff/img/assessor/assessor2.png"></a>
			<a href="<%=basePath%>pages/assessor/showAssess.jsp"><img src="../../pocForStuff/img/assessor/assessor1.png"></a>
			<a href="<%=basePath%>pages/assessor/updateAssess.jsp"><img src="../../pocForStuff/img/assessor/assessor3.png"></a>
			
			</div>
			
			<div id="auditorToolMenu" class="toolMenu">
			<h3>审批相关</h3>
			<a href="<%=basePath%>pages/auditor/showUnauditedClaim.jsp"><img src="../../pocForStuff/img/auditor/auditor1.png"></a>
			<a href="<%=basePath%>pages/auditor/changeAuditedClaim.jsp"><img src="../../pocForStuff/img/auditor/auditor2.png"></a>
			<a href="<%=basePath%>pages/auditor/showAuditedClaim.jsp"><img src="../../pocForStuff/img/auditor/auditor3.png"></a>
			
			</div>
			</div>
			</div>
    <%@include file="common/common.jsp" %>	
    </div>
  </body>
   <!-- 公共js -->
    <%@include file="common/commonjs.jsp"%>
 <!--   <!-- Common js -->
  <script src='../../pocForStuff/js/common.js'></script>
  <!--  自定义js-->
 <script src='../../pocForStuff/js/stuffIndex.js'></script> 
</html>
