<%--@elvariable id="request" type=""--%>
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
%>
<c:set var="urlDB" value="<%= url%>"/>
<c:set var="userDB" value="<%= user%>"/>
<c:set var="pwDB" value="<%= pw%>"/>

<h1><c:out value="<%= pw%>"/></h1>

<s:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                 url="${urlDB}" user="${userDB}" password="${pwDB}"
/>

<s:query dataSource="${snapshot}" var="result">
    SELECT * FROM company_dynamic;
</s:query>

<h1>Стартанем!!!!</h1><br/>
<h2>Все компании</h2><br/>

<h2>Создание новой компании</h2><br/>
<a href="<c:url value="/login"/>">login User</a>
<br/>
<br/>


<select name="selection" id="list">
    <option hidden >Выберите отрасль</option>
    <option value="gaz" id="gaz">Газ</option>
    <option value="oil" id="oil">Нефть</option>
    <option value="3" id="3">Электроэнергия</option>
</select>
<br>
<br>

<form>
    <input type="text" required placeholder="поиск" id="search"/>
</form>
<button id="btn">Поиск</button>

<div></div>

<%--<script>--%>
<%--function check() {--%>
<%--var x = document.getElementById("list").value;--%>
<%--if (x == "1") {--%>
<%--window.location.replace = ("index.jsp=" + x);--%>
<%--document.getElementById("demo").innerHTML = "You selected: " + x;--%>
<%--}--%>
<%--}--%>
<%--</script>--%>
<%--<%--%>
<%--String st = request.getParameter("x");--%>
<%--if (st != null) {--%>
<%--System.out.println("value=" + st);--%>
<%--}--%>
<%--%>--%>
<%--<h1><c:out value="<%= temp%>"/></h1>--%>

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
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.tiker}"/></td>
                <td><c:out value="${row.market_price}"/></td>
                <td><c:out value="${row.p_e}"/></td>
                <td><c:out value="${row.p_s}"/></td>
                <td><c:out value="${row.p_bv}"/></td>
                <td><c:out value="${row.ev_ebitda}"/></td>
                <td><c:out value="${row.ev_s}"/></td>
                <td><c:out value="${row.debt_ebita}"/></td>
                <td><c:out value="${row.roe}"/></td>
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
    <%@ include file="../res/css/style.css"%>
</style>

</body>
</html>