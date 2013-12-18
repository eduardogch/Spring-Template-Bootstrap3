<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/jsp/template/head.jsp" />

<style type="text/css">
body {
	padding-top: 70px;
	padding-bottom: 40px;
	background-color: #eee;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
.errorblock {
	color: #ff0000;
	font-size: 13px;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
}
</style>
</head>
<body>

	<!-- CONTAINER -->
	<div class="container theme-showcase">
	
	<c:if test="${not empty error}">
		<div class="errorblock form-signin">
			Your login attempt was not successful, try again.<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	
		<form class="form-signin" role="form" action="<c:url value='j_spring_security_check' />" method='POST'>
			<h2 class="form-signin-heading"><spring:message code="login.title"/></h2>
			<input type="text" name='j_username' class="form-control" placeholder="<spring:message code="login.username"/>" required autofocus> 
			<input type="password" name='j_password' class="form-control" placeholder="<spring:message code="login.password"/>" required> 
			<button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="login.button.login"/></button>
		</form>

	</div>
</body>
</html>