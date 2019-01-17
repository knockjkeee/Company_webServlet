<%@ page import="model.companyInformation.Data" %>
<%@ page import="model.companyInformation.TheMultiplier" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="model.companyInformation.MarketData" %><%--@elvariable id="request" type=""--%>
<%--<jsp:useBean id="pagecontext" scope="request" type="javax.servlet.AsyncContext"/>--%>
<%--<%@ page isELIgnored="false"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
<%
    String url = application.getInitParameter("dbUrl");
    String user = application.getInitParameter("dbUser");
    String pw = application.getInitParameter("dbPassword");
    TreeMap<String, TheMultiplier> data = (TreeMap<String, TheMultiplier>) session.getAttribute("multiMap");

%>
<c:set var="urlDB" value="<%= url%>"/>
<c:set var="userDB" value="<%= user%>"/>
<c:set var="pwDB" value="<%= pw%>"/>

<s:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                 url="${urlDB}" user="${userDB}" password="${pwDB}"
/>

<s:query dataSource="${snapshot}" var="result">
    SELECT * FROM company_dynamic;
</s:query>

<h2>Создание новой компании (Будет логотип)</h2><br/>
<h2><a href="<c:url value="/login"/>">Login</a><h2>
<%--<br/>--%>
<%--<br/>--%>


<select name="selection" id="list">
    <option hidden>Выберите отрасль</option>
    <option value="gaz" id="gaz">Газ</option>
    <option value="oil" id="oil">Нефть</option>
    <option value="electric" id="3">Электроэнергия</option>
</select>
<br>
<br>

<form>
    <input type="text" required placeholder="поиск" id="search"/>
</form>
<button id="btn">Поиск</button>

<br>
<br>
<header class="login">
</header>
<section>
    <table id="demo" class="main__table" border="1">
        <tr>
            <th><p>Компания</p></th>
            <th><p>Тикер</p></th>
            <th><p>Рыночная капитализация</p></th>
            <th><p>P/E</p></th>
            <th><p>P/S</p></th>
            <th><p>P/BV</p></th>
            <th><p>EV/EBITDA</p></th>
            <th><p>EV/S</p></th>
            <th><p>DEBT/EBITDA</p></th>
            <th><p>ROE</p></th>
        </tr>
        <c:forEach items="<%=data%>" var="map">
            <tr>
                <td><a href="<c:url value="/company?param1=${map.key}"/>"><c:out value="${map.key}"/></a></td>
                <td><c:out value="${map.value.tiker}"/></td>
                <td><c:out value="${map.value.capitalization}"/> &#8381</td>
                <td><c:out value="${map.value.p_E}"/></td>
                <td><c:out value="${map.value.p_S}"/></td>
                <td><c:out value="${map.value.p_BV}"/></td>
                <td><c:out value="${map.value.EV_EBITDA}"/></td>
                <td><c:out value="${map.value.EV_S}"/></td>
                <td><c:out value="${map.value.DEBT_EBITDA}"/></td>
                <td><c:out value="${map.value.ROE}"/> %</td>
            </tr>

        </c:forEach>
        <tr>
        </tr>
    </table>
</section>
<script>
    <%@include file="test1.js"%>
</script>

<style>
    <%@include file="../res/css/style.css"%>
</style>

</body>
</html>