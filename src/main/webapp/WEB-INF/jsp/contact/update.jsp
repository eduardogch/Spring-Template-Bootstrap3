<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/jsp/template/head.jsp" />
</head>
<body>
	<!-- NAVBAR -->
	<c:import url="/WEB-INF/jsp/template/navbar.jsp" />

	<!-- CONTAINER -->
	<div class="container theme-showcase">

		<div class="row">
			<div class="col-md-6 col-md-offset-3 well">
				<!-- FORMS -->
				<h2 style="text-align: center;">
					<spring:message code="contact.form.title" />
				</h2>
				<form:form class="form-horizontal" role="form" method="post"
					id="contact" commandName="contact" action="update">
					<div class="form-group">
						<label for="inputFirstName" class="col-sm-3 control-label"><spring:message
								code="contact.form.firstname" /></label>
						<div class="col-sm-7">
							<form:input type="text" class="form-control" id="firstname"
								path="firstname" placeholder="First Name" />
							<form:errors path="firstname" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputLastName" class="col-sm-3 control-label"><spring:message
								code="contact.form.lastname" /></label>
						<div class="col-sm-7">
							<form:input type="text" class="form-control" id="lastname"
								path="lastname" placeholder="Last Name" />
							<form:errors path="lastname" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputTelephone" class="col-sm-3 control-label"><spring:message
								code="contact.form.telephone" /></label>
						<div class="col-sm-7">
							<form:input type="number" class="form-control" id="telephone"
								path="telephone" placeholder="Telephone" />
							<form:errors path="telephone" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="col-sm-3 control-label"><spring:message
								code="contact.form.email" /></label>
						<div class="col-sm-7">
							<form:input type="email" class="form-control" id="email"
								path="email" placeholder="Email" />
							<form:errors path="email" cssClass="text-danger" />
						</div>
					</div>
					<div class="col-sm-3 col-md-offset-5">
						<button class="btn btn-primary btn-block" type="submit">
							<spring:message code="contact.form.button" />
						</button>
					</div>
				</form:form>
			</div>
		</div>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/jsp/template/footer.jsp" />
	</div>
</body>
</html>