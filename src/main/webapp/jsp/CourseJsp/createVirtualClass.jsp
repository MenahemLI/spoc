<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>courseCreate</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Course/create_lesson.css"
	type="text/css">
<link href="http://www.tit.edu.cn/images/logo.ico" rel="Shortcut Icon">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/Course/common.css">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/Admin/bootstrap.css"
	rel="stylesheet" />

<script
	src="${pageContext.request.contextPath}/js/Admin/jquery-1.10.2.js"></script>
<script
	src="${pageContext.request.contextPath}/js/Admin/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#pull")
				.click(
					
						function() {
							$
									.ajax({
										async : false,
										cache : false,
										url : "${pageContext.request.contextPath}/teacher/ajaxGetRealClass",
										type : "POST",
										dataType : "json",
										success : function(result) {
											var arr = eval(result);
											for (var i = 0; i < arr.length; i++) {
												$("#realClass")
														.append("<input type='checkbox' value='"+arr[i].realClassNum+"' name='realClass'/>"+arr[i].realClassNum);
											}
										}
									});
						});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("#close").click(function() {
			//拟态框每次关闭要清除之前信息，否则会叠加
			$("#realClass").remove();
			//清除后要留一空li,以保证下次成功动态加载
			$("#realClassUl").append(" <li id="+"realClass"+">" + "</li>");
		});
	});
</script>

</head>
<body>
	<div class="wrapper">
		<div class="header">
			<div class="logo-nav-box">
				<div class="container">
					<div class="logo-box">
						<img src="${pageContext.request.contextPath}/images/head-logo.png"
							width="292" height="59" border="0">
					</div>
					<div class="nav-box">
						<ul id="nav" class="nav clearfix">
					</div>
				</div>
			</div>
		</div>

		<div class="main">
			<form
				action="${pageContext.request.contextPath}/teacher/createVirtualClass"
				method="post" enctype="multipart/form-data">
				<div class="input3">
					<span>开设学期：</span> <select name="selectTerm" id="selectTerm">
						<c:forEach items="${listTerm }" var="listTerm">
							<option>${listTerm.startYear }-${listTerm.endYear }&nbsp&nbsp${listTerm.termOne
								}</option>
							<option>${listTerm.startYear }-${listTerm.endYear }&nbsp&nbsp${listTerm.termTwo
								}</option>
						</c:forEach>
					</select>
				</div>
				<div class="input1">
					<span>开设课程：</span> <input name="courseDetail"
					value="${course.courseName }"
						style="width: 40%; height: 30px; float: left; margin-left: 2%;"
						readonly="readonly">
				</div>
				<!-- 拟态框star -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<ul id="realClassUl" style="list-style-type: none;">
								<li id="realClass"></li>
							</ul>
							<div class="modal-footer">
								<button id="close" type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">确定</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 拟态框end -->

				<div class="teacher-friend">
					<span>开设课程：</span>
					<div class="friend">
						<div class="friend1">
							<p>1520561</p>
						</div>
						<div class="friend1">
							<p>1520561</p>
						</div>
						<div class="add">
							<button type="button" id="pull" class="btn btn-primary"
								data-toggle="modal" data-target="#exampleModal"
								data-whatever="@mdo">选择班级</button>
						</div>
					</div>
				</div>
				<hr>
				<div class="button">
					<div class="create">
						<span style="color: white;"><input type="submit"
							value="创建虚拟班级"></span>
					</div>
					<a href="#"><div class="delete">
							<span style="color: white;">取消</span>
						</div></a>
				</div>
			</form>
		</div>
		<div class="footer">
			<div class="container">
				<!--row End-->
				<div class="foot-bq">
					<!-- 版权内容请在本组件"内容配置-版权"处填写 -->
					<div
						style="width: 900px; text-align: center; float: left; position: relative; left: 135px; top: 8px;">
						<p>地址：山西省太原市尖草坪区新兰路31号&nbsp;&nbsp;&nbsp;&nbsp;邮编：030008</p>
						<p>
							版权所有：太原工业学院&nbsp;&nbsp;&nbsp;&nbsp;ICP备案号：晋ICP备14003279号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;晋公网安备号：140110430070001
						</p>
					</div>
				</div>
			</div>
		</div>
</body>

</html>