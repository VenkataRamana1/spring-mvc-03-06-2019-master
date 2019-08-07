<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body class="sidebar-mini skin-black" data-gr-c-s-loaded="true" style="height: auto; min-height: 100%;">
	<jsp:include page="/views/header.jsp" />
	<div style="float: right; padding: 25px;">
		<a class="btn btn-info" href="category"> <i class="fa fa-backward" aria-hidden="true"></i>  Back to List </a>
	</div>
	
		<!-- /.row -->
<div class="content-wrapper" style="min-height: 946px;">
   
    <!-- Main content -->
    <section class="content">
    
     
	<div class="row">
		<div class="col-md-4 py-5 text-white text-center box-header">
			<div class=" ">
				<div class="card-body" style="padding-top: 120px !important;">


					<p>
						<c:if test="${not empty msg}">
						<div class="callout callout-success">
                ${msg} 
              </div>
                                
                            </c:if>
					</p>
				</div>
			</div>
		</div>
		<!-- left column -->
		<div class="col-md-6" style="padding-top:50px;width: 40%;">
			<!-- general form elements -->
			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">Add Category</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form method="POST"
					action="<%=request.getContextPath()%>/category/addCategory">
					<div class="box-body">
					
							<div class="form-group">
								<input type="text" class="form-control" name="employeeId"
									value="${employeeId}" id="employeeId" placeholder="Employee Id"
									required="required">
							</div>
							<div class="form-group">
								<input id="department" name="department" value="${department}"
									placeholder="Department" class="form-control"
									required="required" type="text">
							</div>
						
						
						
							<div class="form-group">
								<input type="text" class="form-control" name="project"
									value="${project}" placeholder="Project Name" id="project"
									required="required">
							</div>
							<div class="form-group">
								<input id="teamName" name="teamName" value="${teamName}"
									placeholder="Team Name" class="form-control" type="text"
									required="required">
							</div>
						


						<div style="float: right;">
							<input type="submit" class="btn bg-orange btn-flat margin" value="Add Category" />
						</div>
					</div>
				</form>
			</div>
			<!-- /.box -->





		</div>
		<!-- /.box-body -->
	</div>

    </section>
    <!-- /.content -->
  </div>

	<!-- <section class="testimonial py-5" id="testimonial"> -->
	<!--     <div class="container"> -->
	<!--         <div class="row "> -->

	<!--             <div class="col-md-8 py-5 border" > -->
	<!--                 <h4 class="pb-4">Please fill with your details</h4> -->
	<%--                 <form method="POST" action="<%=request.getContextPath()%>/category/addCategory">     --%>
	<!--                     <div class="form-row"> -->
	<!--                         <div class="form-group col-md-6"> -->
	<%--                           <input type="text" class="form-control" name="employeeId" value="${employeeId}" id="employeeId" placeholder="Employee Id" required="required"> --%>
	<!--                         </div> -->
	<!--                        <div class="form-group col-md-6"> -->
	<%--                             <input id="department" name="department" value="${department}" placeholder="Department" class="form-control" required="required" type="text"> --%>
	<!--                         </div> -->
	<!-- 			        </div> -->
	<!-- 			         <div class="form-row"> -->
	<!--                         <div class="form-group col-md-6"> -->
	<%--                           <input type="text" class="form-control" name="project" value="${project}" placeholder="Project Name" id="project" required="required"> --%>
	<!--                         </div> -->
	<!--                       <div class="form-group col-md-6"> -->
	<%--                           <input id="teamName" name="teamName" value="${teamName}" placeholder="Team Name" class="form-control" type="text" required="required"> --%>
	<!--                         </div> -->
	<!-- 			        </div> -->


	<!--                     <div class="sbt"> -->
	<!--                        <input type="submit" class="btn btn-primary" value="Add Category" /> -->
	<!--                     </div> -->
	<!--                 </form> -->
	<!--             </div> -->
	<!--         </div> -->
	<!--     </div> -->
	<!-- </section> -->
</body>
</html>