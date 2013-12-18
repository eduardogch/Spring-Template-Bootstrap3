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

		<div class="jumbotron">
			<h1>CRUD Contacts</h1>
			<p>
				<spring:message code="main.title" />
			</p>
			<p>
				<a href="<c:url value='/contact/add' />" class="btn btn-primary"
					role="button"><spring:message code="contact.list.button" />
					&raquo;</a>
			</p>
		</div>

		<hr />

		<div class="row">
			<!-- TABLES -->
			<h2>
				<spring:message code="contact.grid.title" />
			</h2>
			<div class="bs-example">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th><spring:message code="contact.grid.fullname" /></th>
							<th><spring:message code="contact.grid.email" /></th>
							<th><spring:message code="contact.grid.telephone" /></th>
							<th><spring:message code="contact.grid.delete" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${contactList}" var="contact">
							<tr>
								<td>${contact.id}</td>
								<td><a href="<c:url value='/contact/update/${contact.id}' />">${contact.firstname} ${contact.lastname}</a></td>
								<td>${contact.email}</td>
								<td>${contact.telephone}</td>
								<td><a href="<c:url value='/contact/delete/${contact.id}' />">delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/jsp/template/footer.jsp" />
	</div>
</body>
</html>