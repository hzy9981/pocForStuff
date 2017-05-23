<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>理赔单申请</title>
   <!-- 公共css -->
<%@include file="../common/commoncss.jsp"%>
<!-- 自定义css -->
<link href="<%=basePath%>css/showClaimDetail.css" rel="stylesheet">
  </head>
  <body>
    <div id="wrapper">
<!-- 正文内容开始 -->
		<div id="page-wrapper">
			<div class="container-fluid">
	    <!-- claimApplication -->
	    <form id="claimApplicationForm">
	    <h1>理赔申请表</h1>
	    <br>
	    
	    <div class="form-group form-group-inline">
		<div><span>案件号:</span></div>
		<input type="text" class="form-control form-control-inline" id="caseid" name="caseid"
			   placeholder="请输入案件号">
			   <!-- <span class="glyphicon glyphicon-star" aria-hidden="true"></span> -->
	    <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>交强险保单号:</span></div>
		<input type="text" class="form-control form-control-inline" id="a1id" name="a1id"
			   placeholder="请输入交强险保单号">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>第三者责任险保单号:</span></div>
		<input type="text" class="form-control form-control-inline" id="a2id" name="a2id"
			   placeholder="请输入商业第三者责任险保单号">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>被保险人:</span></div>
		<input type="text" class="form-control form-control-inline" id="recognizee" name="recognizee"
			   placeholder="被保险人">
			   <div></div>
			   
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>车牌号码:</span></div>
		<input type="text" class="form-control form-control-inline" id="plateNumber" name="plateNumber"
			   placeholder="车牌号码">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>出险时间:</span></div>
		<input type="text" class="form-control form-control-inline" id="caseTime" name="caseTime"
			   placeholder="出险时间" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>出险地点:</span></div>
		<input type="text" class="form-control form-control-inline" id="casePlace" name="casePlace"
			   placeholder="出险地点">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>报案人:</span></div>
		<input type="text" class="form-control form-control-inline" id="reportPerson" name="reportPerson"
			   placeholder="报案人">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>报案时间:</span></div>
		<input type="text" class="form-control form-control-inline" id="reportTime" name="reportTime"
			   placeholder="报案时间" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			   <div></div>
	    </div>
	    
	    
	    <div class="form-group form-group-inline">
		<div><span>报案人联系电话:</span></div>
		<input type="text" class="form-control form-control-inline" id="reportPersonMobile" name="reportPersonMobile"
			   placeholder="报案人联系电话">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>驾驶员:</span></div>
		<input type="text" class="form-control form-control-inline" id="driver" name="driver"
			   placeholder="驾驶员">
			   <div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
		<div><span>联系电话:</span></div>
		<input type="text" class="form-control form-control-inline" id="driverMobile" name="driverMobile"
			   placeholder="联系电话">
		<div></div>
	    </div>
	    
	    <div class="form-group form-group-inline">
	    <h2>案件描述</h2>
		<textarea id="caseDescribe" name="caseDescribe" class="form-control"></textarea>
	    </div>
	    
	    <div class="form-group form-group-inline">
	    <h2>理由</h2>
		<textarea id="reason" name="reason" class="form-control"></textarea>
	    </div>
	    	    
	  <!--   <div class="footButton">
	    <input id="btn_Update" type="button" class="btn btn-primary"  value="修 改">
	    <input id="btn_Insert" type="button" class="btn btn-primary"  value="新 增">
	    <input id="btn_Delete" type="button" class="btn btn-primary"  value="删 除">
	    </div> -->
	    </form>
			</div>
		</div>
		<!-- 正文内容结束 -->
	</div> 
  </body>	
   <!-- 公共js -->
    <%@include file="../common/commonjs.jsp"%>
  <!--  自定义js-->
     <script src="<%=basePath%>js/showClaimDetail.js"></script>
</html>
