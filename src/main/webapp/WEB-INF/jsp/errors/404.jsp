<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/jsp/template/head.jsp" />
</head>
<body>
	<!-- CONTAINER -->
	<div class="container">

		<div class="row">
			<div class="span12 jumbotron">
				<div class="hero-unit center">
					<h1>
						<spring:message code="error404.title"/> <small><font face="Tahoma" color="red">Error 404</font></small>
					</h1>
					<br />
					<p>
						<spring:message code="error404.msg1"/>
					</p>
					<p>
						<b><spring:message code="error404.msg2"/>:</b>
					</p>
					<a href="${pageContext.request.contextPath}"
						class="btn btn-large btn-info"><i class="icon-home icon-white"></i>
						<spring:message code="error404.button"/> </a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>