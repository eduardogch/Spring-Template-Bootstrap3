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
	<div class="container theme-showcase">
	
		<p>Message :<h1>${message}</h1></p>
	
		Language :
		<a href="?lang=en">English</a> | <a href="?lang=es">Español</a>
	
		<h3>
			Label from a string's file : <spring:message code="welcome.springmvc" text="default text" />
		</h3>
	
		Current Locale : ${pageContext.response.locale}
	
		<!-- FOOTER -->
		<c:import url="/WEB-INF/jsp/template/footer.jsp" />
	</div>
</body>
</html>