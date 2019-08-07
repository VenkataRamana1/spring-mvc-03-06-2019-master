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
	<section class="content">
		<div class="row">
			<div class="col-md-4 py-5 text-white text-center box-header">
				<div class=" ">
					<div class="card-body" style="padding-top: 100px !important;">
						<p></p>
					</div>
				</div>
			</div>
			<!-- left column -->
			<div class="col-md-6" style="padding-top: 0px; width: 40%;">
				<c:if test="${not empty msg}">
					<div class="callout callout-success"
						style="text-align: -webkit-center; font-size: 20px; font-weight: bold;">${msg}</div>

				</c:if>
				<!-- general form elements -->

				<div class="box box-warning">
					<div class="box-header with-border">
						<h3 class="box-title">Edit Category</h3>
						<span>
							<a class="btn btn-info btn-flat margin"
								href="/spring-mvc-zero-xml/requirements"  style="float: right;"> <i
								class="fa fa-backward" aria-hidden="true"></i> Back to List
							</a>
						</span>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form method="POST" action="<%=request.getContextPath()%>/update">

						<div id="requirements" class="box-body">
							<div class="form-row">

								<div class="form-group col-md-6">
									<label>Job Code</label> <input type="text" class="form-control"
										name="jobCode" value="${requirement.jobCode}" id="jobCode"
										disabled="disabled"> <input type="hidden"
										name="jobCode" value="${requirement.jobCode}">
								</div>
								<div class="form-group col-md-6">
									<label>Category</label> <input type="text" class="form-control"
										name="categoryId" value="${requirement.categoryId}"
										id="categoryId" disabled="disabled">

								</div>
							</div>
							<div class="form-group col-md-6">
								<label>Experience</label> <input type="text"
									class="form-control" name="experiencelevel"
									value="${requirement.experiencelevel}" id="experiencelevel"
									placeholder="Employee Id" required="required">
							</div>
							<div class="form-group col-md-6">
								<label>Department</label> <input id="department" name="department"
									value="${requirement.department}" placeholder="Department"
									class="form-control" required="required" type="text">
							</div>

							<div class="form-group col-md-6">
								<label>Total Positions</label> <input type="text"
									class="form-control" name="noofPositions"
									value="${requirement.noofPositions}"
									placeholder="Total Positions" id="noofPositions">
							</div>
							<div class="form-group col-md-6">
								<label>Technology</label> <input id="technology"
									name="technology" value="${requirement.technology}"
									placeholder="Technology" class="form-control" type="text"
									required="required">
							</div>
							<div class="form-group col-md-6">
								<label>Status</label> <select class="form-control" name="status"
									value="${requirement.status}" id="status" required="required">
									<option>Select</option>
									<option>Approved</option>
									<option>Hold</option>
									<option>Rejected</option>

								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Changed By</label> <input id="approvedBy"
									name="approvedBy" value="${requirement.approvedBy}"
									placeholder="Approved By" class="form-control" type="text"
									required="required">
							</div>
							<div class="form-group" style="padding-left: 15px;padding-right: 15px">
								<textarea id="skillset" name="skillset" cols="40" rows="5"
									value="${skillset}" placeholder="skillset" class="form-control"></textarea>
							</div>
							<div>
								<a class="btn btn-info btn-flat margin"
									href="/spring-mvc-zero-xml/requirements"> <i
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