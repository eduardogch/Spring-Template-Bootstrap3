<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Template for a Login and CRUD web aplication in Bootstrap using Servlets ans JSP's">
<meta name="author" content="Eduardo Gonzalez">
<link rel="shortcut icon" href="<c:url value='/resources/icon/favicon.png' />">

<title><spring:message code="main.title"/></title>

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"/>
<!-- Bootstrap theme -->
<link href="<c:url value='/resources/css/bootstrap-theme.min.css' />" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/theme.css' />" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!-- Bootstrap core JavaScript-->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>