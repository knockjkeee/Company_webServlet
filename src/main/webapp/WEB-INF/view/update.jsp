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
<div>Компания: <c:out value="${name}"/></div>
<c:forEach items="${data}" var="map" begin="7" end="7">
    <div>Наименование строки: ${map.value}</div>
</c:forEach>
<br>
<label><h4>Текущие данные: </h4></label>
<table border="1">
    <c:forEach items="${data}" var="map" begin="0" end="6">
        <tr>
            <td>${map.key}</td>
            <td>${map.value}</td>
        </tr>
    </c:forEach>
</table>
<br>

<%--<div>Возвраст: <c:out value="${requestScope.user.age}"/></div>--%>


<form method="post" action="${pageContext.request.contextPath}/Edit">
    <input type="text" hidden name="name" value="${name}"/>
    <c:forEach items="${data}" var="map" begin="8" end="8">
        <input type="text" hidden name="nameTable" value="${map.value}"/>
    </c:forEach>
    <c:forEach items="${data}" var="map" begin="9" end="9">
        <input type="text" hidden name="row" value="${map.value}"/>
    </c:forEach>

    <label><h4>Новые данные: </h4></label>
    <label>2012: <input type="text" name="2012"/></label><br>
    <label>2013: <input type="text" name="2013"/></label><br>
    <label>2014: <input type="text" name="2014"/></label><br>
    <label>2015: <input type="text" name="2015"/></label><br>
    <label>2016: <input type="text" name="2016"/></label><br>
    <label>2017: <input type="text" name="2017"/></label><br>
    <label>2018: <input type="text" name="2018"/></label><br>

    <input type="submit" value="Изменить"><br>


</form>




</body>
</html>
