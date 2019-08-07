<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</style>
<html>
<title>Genzeon Talent acquisition</title>
<body>
	<jsp:include page="/views/header.jsp" />
	<h3>Update User</h3>
	<form method="POST" name="add_requirement"
		action="<%=request.getContextPath()%>/update">

		<table id="requirements">
			<thead>
				<tr>
					<th>JobCode</th>
					<th>ExperienceLevel</th>
					<th>SkillSet</th>
					<th>Department</th>
					<th>Technology</th>
					<th>uploadedBy</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input name="jobCode" value="${requirement.jobCode}"
						type="text" /></td>
					<td><input name="experiencelevel"
						value="${requirement.experiencelevel}" type="text" /></td>
					<td><textarea name="skillset"><c:out
								value="${requirement.skillset}" /> </textarea></td>
					<td><input name="department" value="${requirement.department}"
						type="text" /></td>

					<td><input name="technology" value="${requirement.technology}"
						type="text" /></td>
					<td><input name="uploadedby" value="${requirement.uploadedby}"
						type="text" /></td>
					<td>
						<div class="sbt">
							<input type="submit" value="submit" />
						</div>
					</td>
				</tr>
			</tbody>
		</table>

	</form>
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
					<form method="POST" action="<%=request.getContextPath()%>/update">

						<div id="requirements" class="box-body">

							<div class="form-group">
								<input type="text" class="form-control" name="jobCode"
									value="${requirement.jobCode}" id="jobCode" disabled="disabled">
								<input type="hidden" name="jobCode"
									value="${requirement.jobCode}">
							</div>
							<div class="form-group col-md-6">
								<label> Select a Category Id</label> <select
									class="form-control" name="categoryId">
									<c:forEach items="${requirements}" var="requirement">
										<option value="${requirement.categoryId}">${requirement.categoryId}</option>
									</c:forEach>

								</select>
							</div>

							<div class="form-group">
								<input type="text" class="form-control" name="experiencelevel"
									value="${requirement.experiencelevel}" id="experiencelevel"
									placeholder="Employee Id" required="required">
							</div>
							<div class="form-group">
								<input id="department" name="department"
									value="${requirement.department}" placeholder="Department"
									class="form-control" required="required" type="text">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="skillset"
									value="${requirement.skillset}" placeholder="Skill Set"
									id="skillset">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="noofPositions"
									value="${requirement.noofPositions}"
									placeholder="Total Positions" id="noofPositions">
							</div>
							<div class="form-group">
								<input id="technology" name="technology"
									value="${requirement.technology}" placeholder="Technology"
									class="form-control" type="text" required="required">
							</div>
							<div class="form-group">
								<input id="status" name="status" value="${requirement.status}"
									placeholder="status" class="form-control" type="text"
									required="required">
							</div>
							<div class="form-group">
								<input id="approvedBy" name="approvedBy"
									value="${requirement.approvedBy}" placeholder="Approved By"
									class="form-control" type="text" required="required">
							</div>

							<div>
								<a class="btn btn-info btn-flat margin"
									href="/spring-mvc-zero-xml/category"> <i
									class="fa fa-backward" aria-hidden="true"></i> Back to List
								</a> <span> <input type="submit" style="float: right;"
									class="btn bg-orange btn-flat margin" value="Add Category" />
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