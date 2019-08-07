<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/AdminLTE.min.css">
<!-- <style>
/* #category { */
/* 	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif; */
/* 	border-collapse: collapse; */
/* 	width: 100%; */
/* 	padding-left: 100px; */
/* } */

/* #category td, #customers th { */
/* 	border: 1px solid #ddd; */
/* 	padding: 8px; */
/* } */

/* #category tr:nth-child(even) { */
/* 	background-color: #f2f2f2; */
/* } */

/* #category tr:hover { */
/* 	background-color: #ddd; */
/* } */

/* #category th { */
/* 	padding-top: 12px; */
/* 	padding-bottom: 12px; */
/* 	text-align: left; */
/* 	background-color: #4CAF50; */
/* 	color: white; */
/* } */
/* #area{ */
/* padding-left: 100px; */
/* padding-right: 100px; */
/* } */
 </style> -->
<html>
<title>Update Category</title>
<body class="sidebar-mini skin-black" data-gr-c-s-loaded="true"
	style="height: auto; min-height: 100%;">
	<jsp:include page="/views/header.jsp" />
	<section class="content">
		<div class="row">
			<div class="col-md-4 py-5 text-white text-center box-header">
				<div class=" ">
					<div class="card-body" style="padding-top: 120px !important;">
						<p></p>
					</div>
				</div>
			</div>
			<!-- left column -->
			<div class="col-md-6" style="padding-top: 50px; width: 40%;">
				<c:if test="${not empty msg}">
					<div class="callout callout-success"
						style="text-align: -webkit-center; font-size: 20px; font-weight: bold;">${msg}</div>

				</c:if>
				<!-- general form elements -->

				<div class="box box-warning">
					<div class="box-header with-border">
						<h3 class="box-title">Edit Category</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form method="POST"
						action="<%=request.getContextPath()%>/updateCategory">

						<div id="category" class="box-body">

							<div class="form-group">
								<input type="text" class="form-control" name="categoryId"
									value="${category.categoryId}" id="categoryId"
									disabled="disabled"> <input type="hidden"
									name="categoryId" value="${category.categoryId}">
							</div>

							<div class="form-group">
								<input type="text" class="form-control" name="employeeId"
									value="${category.employeeId}" id="employeeId"
									placeholder="Employee Id" required="required">
							</div>
							<div class="form-group">
								<input id="department" name="department"
									value="${category.department}" placeholder="Department"
									class="form-control" required="required" type="text">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="project"
									value="${category.project}" placeholder="Project Name"
									id="project" required="required">
							</div>
							<div class="form-group">
								<input id="teamName" name="teamName"
									value="${category.teamName}" placeholder="Team Name"
									class="form-control" type="text" required="required">
							</div>
							
							<div>
		<a class="btn btn-info btn-flat margin" href="/spring-mvc-zero-xml/category"> <i
			class="fa fa-backward" aria-hidden="true"></i> Back to List
		</a>
	<span>
							
								<input type="submit"  style="float: right;" class="btn bg-orange btn-flat margin"
									value="Add Category" />
							</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>