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
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <style>
        <%@ include file="../res/css/tabs.css"%>
    </style>
</head>
<body>

<h1>Hello Admin!!!</h1>
<%--<a href="<c:url value='/logout' />">Logout</a>--%>
<a href="<c:url value="/logout"/>">Вернуться на главную страницу</a>
<br>
<br>
<div class="main">
    <div class="wrapper">
        <div class="tabs">
            <span class="tab">Вкладка 1</span>
            <span class="tab">Вкладка 2</span>
            <span class="tab">Вкладка 3</span>
        </div>


        <form method="post" action="${pageContext.request.contextPath}/Upload" enctype="multipart/form-data">


            <div class="tab_content">
                <div class="tab_item">
                    <label>Главная карточка</label>
                    <br>
                    <input type="text" required placeholder="name" name="name" id="name"/>
                    <input type="text" required placeholder="tiker" name="tiker" id="tiker"/>
                    <%--<input type="range" size="50" equired placeholder="description" name="description" id="description"/>--%>
                    <select name="selection" id="list">
                        <option hidden>Выберите отрасль</option>
                        <option value="gaz" id="gaz">Газ</option>
                        <option value="oil" id="oil">Нефть</option>
                        <option value="electric" id="3">Электроэнергия</option>
                    </select>
                    <input type="file" required placeholder="image" name="image" id="image"/><br>
                    <br>
                    <textarea placeholder="description" name="description" rows="5" cols="30"></textarea>
                </div>
                <div class="tab_item">


                    <label>Данные о балансе</label>
                    <label>2018</label>
                    <br>
                    <input type="Денежные средства" required placeholder="Денежные средства" name="cash"/>
                    <input type="Внеоборотные активы" required placeholder="Внеоборотные активы"
                           name="nonCurrentAssets"/>
                    <input type="Оборотные активы" required placeholder="Оборотные активы" name="currentAssets"/>
                    <input type="Итого активы" required placeholder="Итого активы" name="totalAssets"/>
                    <input type="Краткосрочные обязательства" required placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities"/>
                    <input type="Долгосрочные обязательства" required placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities"/>
                    <input type="Итого обязательства" required placeholder="Итого обязательства"
                           name="totalLiabilities"/>
                    <input type="Итого капитал" required placeholder="Итого капитал" name="totalCapital"/>

                    <br>

                    <label>Финансовые данные</label>
                    <label>2018</label>
                    <br>
                    <input type="Выручка" required placeholder="Выручка" name="revenue"/>
                    <input type="Операционная прибыль" required placeholder="Операционная прибыль"
                           name="operatingProfit"/>
                    <input type="Прибыль до налогов" required placeholder="Прибыль до налогов" name="proofitBeforTax"/>
                    <input type="Читая прибыль" required placeholder="Чистая прибыль" name="clearnProfit"/>
                    <input type="Финансовый додход" required placeholder="Финансовый додход" name="financealIncome"/>
                    <input type="Финансовый расход" required placeholder="Финансовый расход" name="financealExpenses"/>
                    <input type="Амортизация" required placeholder="Амортизация" name="depreciation"/>


                </div>
                <div class="tab_item">
                    <label>Рыночные данные</label>
                    <label>2018</label>
                    <br>
                    <input type="Количество АО" required placeholder="Количество АО" name="numberAO"/>
                    <input type="Цена АО" required placeholder="Цена АО" name="priceAO"/>
                    <input type="Количество АР" required placeholder="Количество АР" name="numberAP"/>
                    <input type="Цена АР" required placeholder="Цена АР" name="priceAP"/>

                </div>
            </div>

            <input type="submit" value="Upload">

        </form>
    </div>
</div>


<%--<form method="post" action="${pageContext.request.contextPath}/Upload" enctype="multipart/form-data">--%>
    <%--<div>--%>
        <%--<label>Главная карточка</label>--%>
        <%--<br>--%>
        <%--<input type="text" required placeholder="name" name="name" id="name"/>--%>
        <%--<input type="text" required placeholder="tiker" name="tiker" id="tiker"/>--%>
        <%--&lt;%&ndash;<input type="range" size="50" equired placeholder="description" name="description" id="description"/>&ndash;%&gt;--%>
        <%--<select name="selection" id="list">--%>
            <%--<option hidden>Выберите отрасль</option>--%>
            <%--<option value="gaz" id="gaz">Газ</option>--%>
            <%--<option value="oil" id="oil">Нефть</option>--%>
            <%--<option value="electric" id="3">Электроэнергия</option>--%>
        <%--</select>--%>
        <%--<input type="file" required placeholder="image" name="image" id="image"/><br>--%>
        <%--<br>--%>
        <%--<textarea placeholder="description" name="description" rows="5" cols="30"></textarea>--%>

    <%--</div>--%>
    <%--<br>--%>
    <%--<div>--%>
        <%--<label>Данные о балансе</label>--%>
        <%--<label>2018</label>--%>
        <%--<br>--%>
        <%--<input type="Денежные средства" required placeholder="Денежные средства" name="cash"/>--%>
        <%--<input type="Внеоборотные активы" required placeholder="Внеоборотные активы" name="nonCurrentAssets"/>--%>
        <%--<input type="Оборотные активы" required placeholder="Оборотные активы" name="currentAssets"/>--%>
        <%--<input type="Итого активы" required placeholder="Итого активы" name="totalAssets"/>--%>
        <%--<input type="Краткосрочные обязательства" required placeholder="Краткосрочные обязательства"--%>
               <%--name="shortTermLiabilities"/>--%>
        <%--<input type="Долгосрочные обязательства" required placeholder="Долгосрочные обязательства"--%>
               <%--name="longTermLiabilities"/>--%>
        <%--<input type="Итого обязательства" required placeholder="Итого обязательства" name="totalLiabilities"/>--%>
        <%--<input type="Итого капитал" required placeholder="Итого капитал" name="totalCapital"/>--%>
    <%--</div>--%>
    <%--<br>--%>
    <%--<div>--%>
        <%--<label>Финансовые данные</label>--%>
        <%--<label>2018</label>--%>
        <%--<br>--%>
        <%--<input type="Выручка" required placeholder="Выручка" name="revenue"/>--%>
        <%--<input type="Операционная прибыль" required placeholder="Операционная прибыль" name="operatingProfit"/>--%>
        <%--<input type="Прибыль до налогов" required placeholder="Прибыль до налогов" name="proofitBeforTax"/>--%>
        <%--<input type="Читая прибыль" required placeholder="Чистая прибыль" name="clearnProfit"/>--%>
        <%--<input type="Финансовый додход" required placeholder="Финансовый додход" name="financealIncome"/>--%>
        <%--<input type="Финансовый расход" required placeholder="Финансовый расход" name="financealExpenses"/>--%>
        <%--<input type="Амортизация" required placeholder="Амортизация" name="depreciation"/>--%>
    <%--</div>--%>
    <%--<br>--%>
    <%--<div>--%>
        <%--<label>Рыночные данные</label>--%>
        <%--<label>2018</label>--%>
        <%--<br>--%>
        <%--<input type="Количество АО" required placeholder="Количество АО" name="numberAO"/>--%>
        <%--<input type="Цена АО" required placeholder="Цена АО" name="priceAO"/>--%>
        <%--<input type="Количество АР" required placeholder="Количество АР" name="numberAP"/>--%>
        <%--<input type="Цена АР" required placeholder="Цена АР" name="priceAP"/>--%>
    <%--</div>--%>
    <%--<br>--%>
    <%--<div>--%>
        <%--<input type="submit" value="Upload">--%>
    <%--</div>--%>
<%--</form>--%>

<script>
    $(".tab_item").not(":first").hide();
    $(".wrapper .tab").click(function () {
        $(".wrapper .tab").removeClass("active").eq($(this).index()).addClass("active");
        $(".tab_item").hide().eq($(this).index()).fadeIn()
    }).eq(0).addClass("active");
</script>


</body>
</html>
