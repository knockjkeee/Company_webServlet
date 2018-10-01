<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USER</title>
    <style>
        <%@ include file="../css/style.css"%>
    </style>
</head>
<body>

<h1>Hello User!!!</h1>
<%--<a href="<c:url value='/logout' />">Logout</a>--%>
<a href="<c:url value="/logout"/>">Logout</a>

</body>
</html>
