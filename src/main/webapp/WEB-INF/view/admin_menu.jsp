<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--<%@page pageEncoding="UTF-8" %>--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADMIN</title>
    <%--<style>--%>
    <%--<%@ include file="../css/style.css"%>--%>
    <%--</style>--%>
</head>
<body>

<h1>Hello Admin!!!</h1>
<%--<a href="<c:url value='/logout' />">Logout</a>--%>
<a href="<c:url value="/logout"/>">Вернуться на главную страницу</a>
<br>
<br>
<form method="post" action="${pageContext.request.contextPath}/Upload" enctype="multipart/form-data">
    <div>
        <label>Главная карточка</label>
        <br>
        <input type="text" required placeholder="name" name="name" id="name"/>
        <input type="text" required placeholder="tiker" name="tiker" id="tiker"/>
        <input type="text" required placeholder="description" name="description" id="description"/>
        <select name="selection" id="list">
            <option hidden>Выберите отрасль</option>
            <option value="gaz" id="gaz">Газ</option>
            <option value="oil" id="oil">Нефть</option>
            <option value="electric" id="3">Электроэнергия</option>
        </select>
        <input type="file" required placeholder="image" name="image" id="image"/>

    </div>
    <br>
    <div>
        <label>Данные о балансе</label>
        <label>2018</label>
        <br>
        <input type="Денежные средства" required placeholder="Денежные средства" name="cash"/>
        <input type="Внеоборотные активы" required placeholder="Внеоборотные активы" name="nonCurrentAssets"/>
        <input type="Оборотные активы" required placeholder="Оборотные активы" name="currentAssets"/>
        <input type="Итого активы" required placeholder="Итого активы" name="totalAssets"/>
        <input type="Краткосрочные обязательства" required placeholder="Краткосрочные обязательства"
               name="shortTermLiabilities"/>
        <input type="Долгосрочные обязательства" required placeholder="Долгосрочные обязательства"
               name="longTermLiabilities"/>
        <input type="Итого обязательства" required placeholder="Итого обязательства" name="totalLiabilities"/>
        <input type="Итого капитал" required placeholder="Итого капитал" name="totalCapital"/>
    </div>
    <br>
    <div>
        <label>Финансовые данные</label>
        <label>2018</label>
        <br>
        <input type="Выручка" required placeholder="Выручка" name="revenue"/>
        <input type="Операционная прибыль" required placeholder="Операционная прибыль" name="operatingProfit"/>
        <input type="Прибыль до налогов" required placeholder="Прибыль до налогов" name="proofitBeforTax"/>
        <input type="Читая прибыль" required placeholder="Чистая прибыль" name="clearnProfit"/>
        <input type="Финансовый додход" required placeholder="Финансовый додход" name="financealIncome"/>
        <input type="Финансовый расход" required placeholder="Финансовый расход" name="financealExpenses"/>
        <input type="Амортизация" required placeholder="Амортизация" name="depreciation"/>
    </div>
    <br>
    <div>
        <label>Рыночные данные</label>
        <label>2018</label>
        <br>
        <input type="Количество АО" required placeholder="Количество АО" name="numberAO"/>
        <input type="Цена АО" required placeholder="Цена АО" name="priceAO"/>
        <input type="Количество АР" required placeholder="Количество АР" name="numberAP"/>
        <input type="Цена АР" required placeholder="Цена АР" name="priceAP"/>
    </div>
    <br>
    <div>
        <input type="submit" value="Upload">
    </div>
</form>

<%--https://app.moqups.com/minakov86/JuxkQNdJlc/view/page/aa9df7b72--%>

</body>
</html>
