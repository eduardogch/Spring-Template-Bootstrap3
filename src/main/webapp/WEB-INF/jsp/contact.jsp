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
	
	<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>

		<div class="row">
			<div class="col-md-6 col-md-offset-3 well">
				<!-- FORMS -->
				<h2 style="text-align: center;">Contact Form</h2>
				<form class="form-horizontal" role="form" method="post" id="contact" 
					action="add.html">
					<div class="form-group">
						<label for="inputFirstName" class="col-sm-3 control-label">First
							Name</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="firstname" name="firstname"
								placeholder="First Name">
						</div>
					</div>
					<div class="form-group">
						<label for="inputLastName" class="col-sm-3 control-label">Last
							Name</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="lastname" name="lastname"
								placeholder="Last Name">
						</div>
					</div>
					<div class="form-group">
						<label for="inputTelephone" class="col-sm-3 control-label">Telephone</label>
						<div class="col-sm-7">
							<input type="number" class="form-control" id="telephone" name="telephone"
								placeholder="Telephone">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="col-sm-3 control-label">Email</label>
						<div class="col-sm-7">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Email">
						</div>
					</div>
					<div class="col-sm-3 col-md-offset-5">
						<button class="btn btn-primary btn-block" type="submit">Sign
							in</button>
					</div>
				</form>
			</div>
		</div>

		<br />

		<div class="row">
			<!-- TABLES -->
			<h2>Contacts Results</h2>
			<div class="bs-example">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>Full Name</th>
							<th>Email</th>
							<th>Telephone</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${contactList}" var="contact">
						<tr>
							<td>${contact.id}</td>
							<td>${contact.firstname} ${contact.lastname}</td>
							<td>${contact.email}</td>
							<td>${contact.telephone}</td>
							<td><a href="delete/${contact.id}">delete</a></td>
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