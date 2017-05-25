<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>待定案件处理</title>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 公共css -->
<%@include file="../common/commoncss.jsp"%>
<!-- 自定义css -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/changeAuditedClaim.css">
  </head>
  
  <body>
  <div id="wrapper">
<!-- 正文内容开始 -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="tableTool">
			<strong>待定案件处理</strong>
			<div class="searchTool">
			<select id="searchCondition">
			<option value="caseid">案件号</option>
			<option value="plateNumber">车牌号</option>
			</select>
			<input id="searchContent" type="text" placeholder="请输入搜索的内容">
			<button id="btn_Search" class="red icon-search btn btn-primary">搜索</button>
			</div>
			</div>
			<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						    <th>序号</th>
							<th>案件号</th>
							<th>车牌号</th>
							<th>被保人</th>
							<th>申请时间</th>
							<th>状 态</th>
							<th>更多</th>
						</tr>
					</thead>
					<tbody id="tbody_claimSchedule">
						<tr><td class="noMessage"  colspan="7">没 有 任 何 信 息</td></tr>
					</tbody>
				</table>
				<div id="Pagination" class="pagination"></div>
				<div id="hiddenresult" style="display:none"></div>
			
			</div>
			</div>
			<%@include file="../common/common.jsp" %>
			</div>
  </body>
   <!-- 公共js -->
    <%@include file="../common/commonjs.jsp"%>
 <!--   <!-- Common js -->
  <script src='<%=basePath%>js/common.js'></script>
  <script src='<%=basePath%>js/commonAuditor.js'></script>
  <!--  自定义js-->
    <script src='<%=basePath%>js/changeAuditedClaim.js'></script>
</html>
