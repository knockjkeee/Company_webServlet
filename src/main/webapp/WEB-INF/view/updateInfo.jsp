<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update data for ${name}</title>
</head>
<body>

<a href="<c:url value="/logout"/>">Вернуться на главную страницу</a>
<br>
<br>
<div>Компания: ${name}</div>
<br>
<div>Текущие данные: ${info}</div>
<%--<div>Возвраст: <c:out value="${requestScope.user.age}"/></div>--%>


<form method="post" action="${pageContext.request.contextPath}/EditInfo">
    <input type="text" hidden name="name" value="${name}"/>
    <label><h4>Новые данные: </h4></label>
    <label>info: <input type="text" name="info"/></label>
    <input type="submit" value="Изменить"><br>
</form>


</body>
</html>
