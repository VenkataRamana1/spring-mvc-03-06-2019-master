<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<title>Genzeon Talent acquisition</title>
<body style="overflow-x: hidden;">
	<jsp:include page="/views/header.jsp" />
	<c:if test="${not empty msg}">
		<div class="callout callout-success"
			style="text-align: -webkit-center; font-size: 20px; font-weight: bold;">${msg}</div>

	</c:if>
	<div style="float: right; padding-right: 25px;">
		<a class="btn btn-primary"
			href="<%=request.getContextPath()%>/addRequirement"> Add
			Requirement <i class="fa fa-plus" aria-hidden="true"></i>
		</a>
	</div>
	<div style="padding: 0px 50px 0px 350px;">
		<c:choose>
			<c:when test="${!empty requirements}">
				<h3>List of Requirements</h3>
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Jobcode</th>
							<th>ExperienceLevel</th>
							<th>SkillSet</th>
							<th>Department</th>
							<th>Technology</th>
							<th>uploadedBy</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${requirements}">
							<tr>
								<td>${t.jobCode}</td>
								<td>${t.experiencelevel}</td>
								<td>${t.skillset}</td>
								<td>${t.department}</td>
								<td>${t.technology}</td>
								<td>${t.uploadedby}</td>
								<td>
								<a href="<%=request.getContextPath()%>/update/requirement/${t.jobCode}"
									class="btn btn-info btnflow"><i class="fa fa-edit"></i></a>   
									<a href="<%=request.getContextPath()%>/delete/${t.jobCode}"
									onclick="return confirm('Do you really want to delete?')"
									class="btn btn-danger btnflow"><i class="fa fa-trash"></i></a>
									  <a href="<%=request.getContextPath()%>/add/${t.jobCode}"
									class="btn btn-success"><i class="fa fa-user-plus"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<div style="padding-left: 500px; padding-top: 100px;">
					<div>

						<img alt=""
							src="/spring-mvc-zero-xml/resources/img/feelingsad.png"
							style="width: 400px; height: 350px;">

					</div>
					<h4 style="margin-left: 100px; margin-right: 150px;">No
						Requirement Available</h4>
					<a class="btn btn-primary" href="addRequirement"
						style="text-align: center; margin-left: 130px; margin-right: 150px;">
						Add Requirement </a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>