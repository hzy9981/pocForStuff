<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path_css = request.getContextPath();
String basePath_css = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_css;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	 <!-- Bootstrap Core CSS -->
    <link href="<%=basePath_css%>/css/common/bootstrap.min.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="<%=basePath_css%>/css/plugins/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<%=basePath_css%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <link href="<%=basePath_css%>/css/common/pagination.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath_css%>/css/common/jquery-ui.min.css" rel="stylesheet" type="text/css">
    <!-- scroll -->
    <link href="<%=basePath_css%>/css/common/jquery.mCustomScrollbar.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
</html>
