<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.net.Inet4Address"%>

<div class="page-header">
    <h2><spring:message code="footer.title"/></h2>
</div>
<div class="well">
    <p>
    <strong><spring:message code="footer.developer"/></strong>: Jose Gonzalez Chavira - 
    <strong><spring:message code="footer.date"/></strong>: <%= new java.util.Date()%> - 
    <strong>IP</strong>: <%= Inet4Address.getLocalHost().getHostAddress()%> -
    <strong><spring:message code="Footer.address"/></strong>: 2345 Plaindfield Way Edison 08834 New Jersey, U.S.A.
    </p>
</div>