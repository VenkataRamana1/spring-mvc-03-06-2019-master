<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Requirement</title>
</head>

<jsp:include page="/views/header.jsp" />

<div class="content-wrapper" style="min-height: 946px;">

	<!-- Main content -->
	<section class="content">


	<div class="row">
		<div class="col-md-4 py-5 text-white text-center box-header">
			<div class=" ">
				<div class="card-body" style="padding-top: 120px !important;">


					<p>
						<c:if test="${not empty msg}">
							<div class="callout callout-success">${msg}</div>

						</c:if>
					</p>
				</div>
			</div>
		</div>
		<!-- left column -->
		<a class="btn btn-info btn-flat margin"
			href="/spring-mvc-zero-xml/requirements" style="float: right;"> <i
			class="fa fa-backward" aria-hidden="true"></i> Back to List
		</a>
		<div class="col-md-6" style="padding-top: 50px;">

			<!-- general form elements -->
			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">Add Requirement</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form method="POST" name="add_requirement"
					action="<%=request.getContextPath()%>/addRequirement">
					<div class="box-body">
						<%-- <div class="form-group">
							<input type="text" class="form-control" name="categoryId"
								value="${categoryId}" id="categoryId" disabled="disabled">
							<input type="hidden" name="categoryId" value="${categoryId}">
						</div> --%>


						<div class="form-row">

							<div class="form-group col-md-6">
								<label> Select a Category Id</label> <select
									class="form-control" name="categoryId">
									<c:forEach items="${requirements}" var="res">
										<option value="${res.categoryId}">${res.categoryId}</option>
									</c:forEach>

								</select>
							</div>
							<!-- 							<div class="form-group col-md-6"> -->
							<!-- 								<label>Employee Code</label><select class="form-control" -->
							<!-- 									name="categoryId"> -->
							<%-- 									<c:forEach items="${requirements}" var="res"> --%>
							<%-- 										<option value="${res.employeeId}">${res.employeeId}</option> --%>
							<%-- 									</c:forEach> --%>

							<!-- 								</select> -->
							<!-- 							</div> -->
						</div>
						<div class="form-group col-md-6">
							<label>Technology</label> <input id="technology"
								name="technology" value="${technology}" placeholder="Technology"
								class="form-control" required="required" type="text">
						</div>
						<div class="form-row">

							<div class="form-group col-md-6">
								<label>Experience</label> <select class="form-control"
									name="experiencelevel" value="${experiencelevel}"
									id="experiencelevel" required="required">
									<option>Select</option>
									<option>Fresher</option>
									<option>Fresher To 1 Year</option>
									<option>2 Years</option>
									<option>3+ Years</option>
								</select>
							</div>
							<div class="form-group col-md-6">
								<label>Total Positions</label> <input id="noofPositions"
									name="noofPositions" value="${noofPositions}"
									placeholder="Total Positions" class="form-control"
									required="required" type="text">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Uploaded By</label><input type="text"
									class="form-control" name="uploadedby" value="${uploadedby}"
									placeholder="Uploaded by" id="uploadedby" required="required">
							</div>
							<div class="form-group col-md-6">

								<label>Department</label> <select class="form-control"
									name="department" value="${department}" id="department"
									required="required">
									<option>Select</option>
									<option>IT</option>
									<option>Non IT</option>
								</select>
							</div>
						</div>
						<div class="form-group col-md-12">
							<textarea id="skillset" name="skillset" cols="40" rows="5"
								value="${skillset}" placeholder="skillset" class="form-control"></textarea>
						</div>
						<%-- <div class="form-group col-md-12">
								<input id="updatedOn" name="updatedOn" cols="40" rows="5"
									value="${updatedOn}" placeholder="updated On"
									class="form-control" />
							</div> --%>
					</div>

					<div style="float: right;">
						<input type="submit" class="btn bg-orange btn-flat margin"
							value="Add Requirement" />
					</div>
				</form>
			</div>
		</div>

	</div>
	<!-- /.box-body -->
</div>

</section>
<!-- /.content -->
</div>

<section class="testimonial py-5" id="testimonial"> </section>

</html>