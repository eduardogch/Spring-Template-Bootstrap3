<%@page import="java.net.Inet4Address"%>
<div class="page-header">
    <h1>The footer</h1>
</div>
<div class="well">
    <p>Programer: Jose Eduardo Gonzalez Chavira - Date: <%= new java.util.Date()%> - IP: <%= Inet4Address.getLocalHost().getHostAddress()%></p>
</div>