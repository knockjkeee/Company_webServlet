<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        <%@ include file="../css/style.css"%>
    </style>
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

<s:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
url="${urlDB}" user="${userDB}" password="${pwDB}"
/>

<s:query dataSource="${snapshot}" var="result">
         SELECT * FROM company_dynamic;
</s:query >

<h1>Стартанем!!!!</h1><br/>
<h2>Все компании</h2><br/>

<h2>Создание новой компании</h2><br/>
<a href="<c:url value="/login"/>">login User</a>
<br>
<br>
<header class="login">
</header>

<section class="table">
    <table class="main__table" border="1">
        <tr>
            <th>
                <p>Компания</p>
            </th>
            <th>
                <p>Тикер</p>
            </th>
            <th>
                <p>Рыночная капитализация</p>
            </th>
            <th>
                <p>P/E</p>
            </th>
            <th>
                <p>P/S</p>
            </th>
            <th>
                <p>P/BV</p>
            </th>
            <th>
                <p>EV/EBITDA</p>
            </th>
            <th>
                <p>EV/S</p>
            </th>
            <th>
                <p>DEBT/EBITDA</p>
            </th>
            <th>
                <p>ROE</p>
            </th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td> <c:out value="${row.name}"/></td>
                <td> <c:out value="${row.tiker}"/></td>
                <td> <c:out value="${row.market_price}"/></td>
                <td> <c:out value="${row.p_e}"/></td>
                <td> <c:out value="${row.p_s}"/></td>
                <td> <c:out value="${row.p_bv}"/></td>
                <td> <c:out value="${row.ev_ebitda}"/></td>
                <td> <c:out value="${row.ev_s}"/></td>
                <td> <c:out value="${row.debt_ebita}"/></td>
                <td> <c:out value="${row.roe}"/></td>
            </tr>
        </c:forEach>
        <tr>
        </tr>
    </table>
</section>
</body>
</html>