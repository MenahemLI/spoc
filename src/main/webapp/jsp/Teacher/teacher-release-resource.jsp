<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>资源发布页面</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/teacher/teacher-release-resource.css"
	type="text/css">
<script
	src="${pageContext.request.contextPath}/js/Admin/jquery-1.10.2.js"></script>
<script type="text/javascript">
	UE.getEditor('resourceDetail');
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/zh-cn.js"></script>
</head>
<body>
	<jsp:include page="/jsp/top.jsp" flush="true" />
	<div class="main_b">
		<div class="text">
			<form
				action="${pageContext.request.contextPath}/teacher/publishResource"
				enctype="multipart/form-data" method="post">
				<span><strong>名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</strong></span>
				<input type="text" name="resourceName" placeholder="请输入名称："
					style="width: 60%; height: 30px; float: left;">
				<div style="width: 10%; height: 30px; float: left">
					<select id="taskCategory" name="taskCategory">
						<option>选择资源类型</option>
						<option>教案资源</option>
						<option>教学资源资源</option>
						<option>作业资源</option>
						<option>多媒体资资源</option>
						<option>实验资源</option>
						<option>课程设计资源</option>
					</select>
				</div>
				<br> <br> <span><strong>资源介绍：</strong></span> <input
					name="resourceDetail" type="text" placeholder="请输入资源详情："
					style="width: 80%; height: 100px; float: left;"> <br>
				<br> <span style="margin-top: 1%;"><strong>附&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;件：</strong></span><input
					style="margin-top: 1%;" name="file" type="file" multiple="multiple">
				<div class="button">
					<button
						style="padding-left: 1%; padding-right: 1%; font-size: 16px; float: right; margin-right: 20%;">上传并发布</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/jsp/footer.jsp" flush="true" />
</body>
</html>