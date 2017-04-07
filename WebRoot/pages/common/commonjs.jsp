<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path_js = request.getContextPath();
String basePath_js = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_js;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <!--    jquery -->
  <script type="text/javascript" src='<%=basePath_js%>/js/common/jquery.js'></script>
  <!--  bootstrap -->
  <script type="text/javascript" src='<%=basePath_js%>/js/common/bootstrap.min.js'></script>
  <!--  bootstrap-select -->
  <script type="text/javascript" src='<%=basePath_js%>/js/common/bootstrap-select.js'></script>
  <!--    jquery validate -->
  <script type="text/javascript" src='<%=basePath_js%>/js/common/jquery.validate.js'></script>
  <!-- jquery cookie -->
   <script type="text/javascript" src='<%=basePath_js%>/js/common/jquery.cookie.js'></script>
    <!-- jquery pagination分页 -->
   <script type="text/javascript" src='<%=basePath_js%>/js/common/jquery.pagination.js'></script>
    <!-- scroll -->
 <script src='<%=basePath_js%>/js/common/jquery-ui-1.10.4.min.js'></script>
 <script src='<%=basePath_js%>/js/common/jquery.mousewheel.min.js'></script>
 <script src='<%=basePath_js%>/js/common/jquery.mCustomScrollbar.js'></script>
 <script src='<%=basePath_js%>/js/common/jquery.mCustomScrollbar.concat.min.js'></script> 
   <!-- jquery 日历 -->
  <script src='<%=basePath_js%>/js/common/laydate.js'></script>
  <script src='<%=basePath_js%>/js/common/laydate.dev.js'></script>
  <!-- jquery 日历 -->
  <script src='<%=basePath_js%>/js/common/jquery.form.js'></script>
  <!--     float-->
  <%-- <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/excanvas.min.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/flot-data.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/jquery.flot.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/jquery.flot.pie.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/jquery.flot.resize.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/flot/jquery.flot.tooltip.min.js'></script> --%>
  <!-- morris -->  
  <%-- <script type="text/javascript" src='<%=basePath%>/js/plugins/morris/morris-data.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/morris/morris.min.js'></script>
  <script type="text/javascript" src='<%=basePath%>/js/plugins/morris/raphael.min.js'></script> --%>
</head>
</html>
