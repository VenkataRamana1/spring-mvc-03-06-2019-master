<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
/* #requirements { */
/* 	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif; */
/* 	border-collapse: collapse; */
/* 	width: 100%; */
/* } */

/* #requirements td, #customers th { */
/* 	border: 1px solid #ddd; */
/* 	padding: 8px; */
/* } */

/* #requirements tr:nth-child(even) { */
/* 	background-color: #f2f2f2; */
/* } */

/* #requirements tr:hover { */
/* 	background-color: #ddd; */
/* } */

/* #requirements th { */
/* 	padding-top: 12px; */
/* 	padding-bottom: 12px; */
/* 	text-align: left; */
/* 	background-color: #4CAF50; */
/* 	color: white; */
/* } */

/* .btn { */
/* 	font-size: pxtoem(17, 16); */
/* 	display: inline-block; */
/* 	padding: 0.74em 1.5em; */
/* 	margin: 1.5em 0 0; */
/* 	border-width: 0 0 0 0; */
/* 	border-bottom: 5px solid; */
/* 	text-transform: uppercase; */
/* 	cursor: pointer; */
/* 	padding: 6px 12px; */
/* } */
.iconic {
	top: 5px;
}

.btnflow {
	height: 30px;
}

.btn-submit {btn ($blue);
	
}
</style>
<html>
<title>Genzeon Talent acquisition</title>
<jsp:include page="/views/header.jsp" />
<body>
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="min-height: 901px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div
				style="margin-top: 20px; margin-left: 250px; padding-right: 100px">
				<%-- 		<jsp:useBean id="pagedListHolder" scope="request" type="org.springframework.beans.support.PagedListHolder" /> --%>
				<%-- 		<c:url value="/category" var="pagedLink"> --%>
				<%-- 			<c:param name="p" value="~" /> --%>
				<%-- 	</c:url> --%>

				<%--  		<tg:paging pagedListHolder="${pagedListHolder}"  --%>
				<%-- 			pagedLink="${pagedLink}" />  --%>
				<c:if test="${category == null }">
					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-check"></i> Alert!
						</h4>
						Success alert preview. This alert is dismissable.
					</div>
				</c:if>
				<c:if test="${not empty msg}" > 
                           ${msg}
                         </c:if>
				<c:choose>
					<c:when test="${!empty category }">
						<h3>List of Categories</h3>
						<div style="float: right; padding-right: 25px;">

							<a class="btn btn-primary" href="addCategory"> Add Category <i
								class="fa fa-plus" aria-hidden="true"></i></a>
						</div>
						<div class="box-body">
							<table id="requirements"
								class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Employee Id</th>
										<th>Department</th>
										<th>Project Name</th>
										<th>Team Name</th>
										<th>Actions</th>
<!-- 										<th>Date</th> -->
									</tr>
								</thead>
								<tbody>
									<c:forEach var="t" items="${category}">
										<tr>
											<td>${t.employeeId}</td>
											<td>${t.department}</td>
											<td>${t.project}</td>
											<td>${t.teamName}</td>
											
											<td><a
												href="<%=request.getContextPath()%>/updateCategory/${t.categoryId}"
												class="btn btn-info btnflow"><span
													class="glyphicon glyphicon-pencil iconic"></span></a>   <a
												href="<%=request.getContextPath()%>/deletecategory/${t.categoryId}"
												onclick="return confirm('Do you really want to delete?')"
												class="btn btn-danger btnflow"><span
													class="glyphicon glyphicon-remove iconic"></span></a> 
													 <%-- <a	href="<%=request.getContextPath()%>/addRequirement/${t.categoryId}" class="btn btn-success btnflow"><i
									class="glyphicon glyphicon-forward"></i></a> --%></td>
<%-- 									<td><%= (new java.util.Date()).toLocaleString()%></td> --%>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:when>
					<c:otherwise>
						<div style="padding-left: 200px;">
							<div>
								<img alt=""
									src="/spring-mvc-zero-xml/resources/img/feelingsad.png"
									style="width: 400px; height: 350px;">

							</div>
							<h4 style="margin-left: 120px; margin-right: 150px;">No
								Category Available</h4>
							<a class="btn btn-primary" href="addCategory"
								style="text-align: center; margin-left: 145px; margin-right: 150px;">
								Add Category </a>
						</div>
					</c:otherwise>
				</c:choose>

			</div>
		</section>
	</div>


</body>


<script>
	function myFunction() {
		var txt;
		if (confirm("Do you really want to delete?")) {
			txt = "Job Category Deleted Successfully";
		} else {
			txt = "Failed to delete!";
		}
		document.getElementById("demo").innerHTML = txt;
	}
</script>