<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>课程二级页面</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Course/courseSecondJsp.css"
	type="text/css">

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#searchButton").click(function() {
		var content = $("#search").val();
		$.ajax({
			type : "POST", //请求方式
			url : "", //请求路径：页面/方法名字
			data : content, //参数
			dataType : "text",
			contentType : "application/json; charset=utf-8",
			success : function(msg) { //成功
			},
			error : function(obj, msg, e) { //异常
				
			}
		});
	});
});
</script>
</head>
<body>

<a href="${pageContext.request.contextPath}/teacher/toMyCreateCourse"
				target="course">
				<button>我创建的课程</button>
			</a> <a
				href="${pageContext.request.contextPath}/teacher/toMyJoinCourse"
				target="course">
				<button>我加入的课程</button>
			</a>
	<div class="courses">
			<c:forEach items="${courseList }" var="courseListItems"
				varStatus="status">
				<div class="course">
					<img src="${pageContext.request.contextPath}/img/Course/tu10.jpg"
						alt="" style="margin-left: 7%;" />
					<ul class="courseInfo">
						<li><small>课程名：${courseListItems.courseName }</small></li>
						<li><small>创建教师：${teacherNames[status.index]}</small></li>
						<li><small>创建时间：${courseListItems.publishTime }</small></li>
						<li><small>课程人数:${courseListItems.courseStudentNum }</small></li>
					</ul>
				</div>
			</c:forEach>
		</div>
</body>
</html>