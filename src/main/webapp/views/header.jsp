<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->

<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/bootstrap/dist/css/bootstrap.css">
<link rel="stylesheet"
	href="/spring-mvc-zero-xml/resources/bower_components/jquery/dist/jquery.min.js">
<!-- jQuery 3 -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/raphael/raphael.min.js"></script>
<script
	src="/spring-mvc-zero-xml/resources/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script
	src="/spring-mvc-zero-xml/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
	src="/spring-mvc-zero-xml/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/moment/min/moment.min.js"></script>
<script
	src="/spring-mvc-zero-xml/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script
	src="/spring-mvc-zero-xml/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script
	src="/spring-mvc-zero-xml/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/spring-mvc-zero-xml/resources/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/spring-mvc-zero-xml/resources/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/spring-mvc-zero-xml/resources/js/demo.js"></script>
<script type="text/javascript"
	src="/spring-mvc-zero-xml/resources/js/adminlte.js"></script>
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<style>
.navbar-nav>li {
	float: right;
	padding-left: 10px;
	padding-right: 10px;
}

a {
	color: white;
}
</style>

</head>



<!-- Navbar links -->
<!-- 		<div class="collapse navbar-collapse" id="collapsibleNavbar"> -->
<!-- 			<ul class="navbar-nav ml-auto"> -->
<!-- 				<li><a class="nav-link" href="requirements"> Requirement -->
<!-- 						List</a></li> -->
<!-- 				<li><a class="nav-link" href="resources"> Resources List</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link" data-toggle="modal" -->
<!-- 					data-target="#signIn">Sign In</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link" data-toggle="modal" -->
<!-- 					data-target="#signUp">Sign Up</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<body class="sidebar-mini skin-black" data-gr-c-s-loaded="true"
	style="height: auto; min-height: 100%;">
	
		<header class="main-header"> <!-- Logo --> <a
			href="../index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>G</b>EN</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>GENZ</b>EON</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span> <span
			class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
		</a> </nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar" style="height: auto;"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="/spring-mvc-zero-xml/resources/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>User Name</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu tree" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>Dashboard</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="/spring-mvc-zero-xml"><i
							class="fa fa-circle-o"></i> Dashboard</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
					<span>Inventory</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="/spring-mvc-zero-xml/category"><i
							class="fa fa-circle-o"></i> Category </a></li>
					<li><a href="/spring-mvc-zero-xml/addCategory"><i
							class="fa fa-circle-o"></i> Add Category</a></li>
					<!--             <li><a href="forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li> -->
					<li><a href="/spring-mvc-zero-xml/requirements"><i
							class="fa fa-circle-o"></i> Requirements </a></li>
					<li><a href="/spring-mvc-zero-xml/addRequirement"><i
							class="fa fa-circle-o"></i> Add Requirements </a></li>
				</ul></li>

		</ul>
		</section> </aside>
	

</body>


</html>



