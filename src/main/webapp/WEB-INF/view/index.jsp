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
    <title>Home page</title>
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

<%--<h2>Создание новой компании (Будет логотип)</h2><br/>--%>
<h2><a href="<c:url value="/login"/>">Login</a>
    <%--<br/>--%>
    <%--<br/>--%>

    <br>
    <h3>Год для мультипликатора</h3>
    <div>
        <select name="selection" id="year">
            <option hidden id="null2" >Выберите год</option>
            <option value="2012" id="2012">2012</option>
            <option value="2013" id="2013">2013</option>
            <option value="2014" id="2014">2014</option>р
            <option value="2015" id="2015">2015</option>
            <option value="2016" id="2016">2016</option>
            <option value="2017" id="2017">2017</option>
            <option value="2018" id="2018">2018</option>
        </select>
    </div>
    <br>
    <h3>Отрасль</h3>
    <select name="selection" id="list">
        <option hidden id="null">Выберите отрасль</option>
        <option value="gaz" id="gaz">Газ</option>
        <option value="oil" id="oil">Нефть</option>
        <option value="electric" id="electric">Электроэнергия</option>
        <option value="it" id="it">Информационные технологии</option>
        <option value="prom" id="prom">Промышленность</option>
        <option value="invest" id="invest">Инсвестиции</option>
        <option value="construction" id="construction">Строительство</option>
        <option value="auto" id="auto">Транспорт</option>
        <option value="retail" id="retail">Ритейл</option>
        <option value="telecom" id="telecom">Телекоммуникации</option>
        <option value="finance" id="finance">Финансовый секто</option>
        <option value="electronetwork" id="electronetwork">Электросети</option>
        <option value="metall" id="metall">Металлургия</option>
        <option value="coal" id="coal">Уголь</option>
        <option value="other" id="other">Прочие</option>
    </select>
    <br>
    <h3>Поиск компании</h3>
    <form>
        <input type="text" required placeholder="поиск" id="search"/>
    </form>
    <button id="btn">Поиск/Сброс фильтров</button>



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
                    <td><c:out value="${map.value.DEBT_EBITDA}"/> &#8381</td>
                    <td><c:out value="${map.value.ROE}"/> %</td>
                </tr>

            </c:forEach>
            <tr>
            </tr>
        </table>
    </section>
    <c:if test="${not empty loginError}">
    <script>
        window.addEventListener("load", function () {
            alert("${loginError}");
        });
    </script>
    </c:if>


    <script>
        <%@include file="main.js"%>
    </script>

    <style>
        <%@include file="../res/css/style.css"%>
    </style>

</body>
</html>