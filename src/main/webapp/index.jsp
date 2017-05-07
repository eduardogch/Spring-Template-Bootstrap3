<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/jsp/template/head.jsp" />
</head>
<body>
	<!-- NAVBAR -->
	<c:import url="/WEB-INF/jsp/template/navbar.jsp" />

	<!-- CONTAINER -->
	<div class="container theme-showcase">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Hello, Welcome amigo!!!</h1>
			<p>This is a template for a simple and informational Login and
				CRUD WebAPP. It coding in Java Server Pages (JSP) and Servles with
				the design pattern Model-View-Controller (MVC).</p>
			<p>
				<a href="<c:url value='/login' />" class="btn btn-primary btn-lg"
					role="button">Login page &raquo;</a> 
				<a href="<c:url value='/welcome' />" class="btn btn-warning btn-lg"
					role="button">Welcome page &raquo;</a>
			</p>
		</div>

		<div class="page-header">
			<h1>So cool!!!</h1>
		</div>
		<div class="progress">
			<div class="progress-bar" role="progressbar" aria-valuenow="60"
				aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
				<span class="sr-only">60% Complete</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-success" role="progressbar"
				aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
				style="width: 40%">
				<span class="sr-only">40% Complete (success)</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-info" role="progressbar"
				aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
				style="width: 20%">
				<span class="sr-only">20% Complete</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-warning" role="progressbar"
				aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
				style="width: 60%">
				<span class="sr-only">60% Complete (warning)</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-danger" role="progressbar"
				aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
				style="width: 80%">
				<span class="sr-only">80% Complete (danger)</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-success" style="width: 35%">
				<span class="sr-only">35% Complete (success)</span>
			</div>
			<div class="progress-bar progress-bar-warning" style="width: 20%">
				<span class="sr-only">20% Complete (warning)</span>
			</div>
			<div class="progress-bar progress-bar-danger" style="width: 10%">
				<span class='sr-only'>10% Complete (danger)</span>
			</div>
		</div>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/jsp/template/footer.jsp" />
	</div>
</body>
</html>