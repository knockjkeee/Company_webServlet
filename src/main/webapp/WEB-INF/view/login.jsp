<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="../css/style.css" %>--%>
<html>
<head>
    <title>Login</title>
    <%--<link rel="stylesheet" href="../css/style.css" type="text/css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="../css/style.css"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="style.css">--%>

    <%--<link href="${pageContext.request.contextPath}/WEB-INF/css/style.css" rel="stylesheet" type="text/css"/>--%>
    <style>
        <%@ include file="../res/css/style.css"%>
    </style>
</head>
<body>

<form id="loginForm" action="" method="post">
    <div class="field">
        <label>Login</label>
        <div class="input">
            <input type="text" required placeholder="login" name="login" id="login"/>
        </div>
    </div>
    <div class="field">
        <label>Password</label>
        <div class="input">
            <input type="password" required placeholder="password" name="password" id="pass">
        </div>
    </div>

    <div class="submit">
        <button type="submit">Войти</button>
    </div>

</form>
</body>
</html>
