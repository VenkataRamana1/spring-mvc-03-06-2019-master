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
<style>
#requirements {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#requirements td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#requirements tr:nth-child(even) {
	background-color: #f2f2f2;
}

#requirements tr:hover {
	background-color: #ddd;
}

#requirements th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}

.btn {
	font-size: pxtoem(17, 16);
	display: inline-block;
	padding: 0.74em 1.5em;
	margin: 1.5em 0 0;
	border-width: 0 0 0 0;
	border-bottom: 5px solid;
	text-transform: uppercase;
	cursor: pointer;
}

.btn-submit {btn ($blue);
	
}

table {
	width: 750px;
	border-collapse: collapse;
	margin: 50px auto;
}

/* Zebra striping */
tr:nth-of-type(odd) {
	background: #eee;
}

th {
	background: #3498db;
	color: white;
	font-weight: bold;
}

td, th {
	padding: 10px;
	border: 1px solid #ccc;
	text-align: left;
	font-size: 18px;
}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media only screen and (max-width: 760px) , ( min-device-width : 768px)
	and (max-device-width: 1024px) {
	table {
		width: 100%;
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr {
		display: block;
	}

	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr {
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	tr {
		border: 1px solid #ccc;
	}
	td {
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		padding-left: 50%;
	}
	td:before {
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%;
		padding-right: 10px;
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);
		color: #000;
		font-weight: bold;
	}
}
</style>
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
			href="<%=request.getContextPath()%>/add/addRequirement"> Add
			Requirement <i class="fa fa-plus" aria-hidden="true"></i>
		</a>
	</div>
	<div style="padding: 0px 50px 0px 350px;">
		<c:choose>
			<c:when test="${!empty requirements}">
				<h3>List of Requirements</h3>
				<table id="requirements">
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
								<td><a
									href="<%=request.getContextPath()%>/update/requirement/${t.jobCode}"><i
										class="fa fa-edit"></i></a>   | <a
									href="<%=request.getContextPath()%>/delete/${t.jobCode}"
									onclick="return confirm('Do you really want to delete?')"><i
										class="fa fa-trash"></i></a>   | <a
									href="<%=request.getContextPath()%>/add/${t.jobCode}"><i
										class="fa fa-user-plus"></i></a></td>
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