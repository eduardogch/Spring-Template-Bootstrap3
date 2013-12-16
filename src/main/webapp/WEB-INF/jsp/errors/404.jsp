<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
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
						Page Not Found <small><font face="Tahoma" color="red">Error
								404</font></small>
					</h1>
					<br />
					<p>
						The page you requested could not be found, either contact your
						webmaster or try again. Use your browsers <b>Back</b> button to
						navigate to the page you have prevously come from
					</p>
					<p>
						<b>Or you could just press this neat little button:</b>
					</p>
					<a href="${pageContext.request.contextPath}"
						class="btn btn-large btn-info"><i class="icon-home icon-white"></i>
						Take Me Home</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>