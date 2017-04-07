<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String base_Path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>网上理赔系统-员工登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <!-- Custom  CSS-->
    <link href="<%=base_Path%>css/login.css" rel="stylesheet">
    <!-- Common CSS -->
    <%@include file="common/commoncss.jsp"%>
  </head>
   <body>
  <div class="container">
    <div class="row">
        <div class="form-center col-md-offset-3 col-md-6">
            <form id="loginForm" class="form-horizontal" action="" method="POST">
                <span class="heading">员工登录</span>
                <strong id="message" class="wrongmessage">账 号 或 者 密 码 错 误</strong>
                <div class="form-group">
                     <!-- <input type="email" class="form-control" id="inputEmail3" placeholder="用户名或电子邮件"> -->
                     <input class="form-control" id="id" name ="id" placeholder="用户名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="password" name ='password' placeholder="密　码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <input type="radio" id="actor" name ='actor' value="auditor"/>审批员
                    <input type="radio" id="actor" name ='actor' value="assessor"/>定损员
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span>
                    <button type="submit" onclick="" class="btn btn-default">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
    </body>
     <%@include file="common/commonjs.jsp"%>
     <!-- Custom js -->
     <script src='<%=base_Path%>js/login.js'></script>
</html>
