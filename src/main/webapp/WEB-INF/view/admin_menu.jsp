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
            <span class="tab">Главная карточка</span>
            <span class="tab">2012</span>
            <span class="tab">2013</span>
            <span class="tab">2014</span>
            <span class="tab">2015</span>
            <span class="tab">2016</span>
            <span class="tab">2017</span>
            <span class="tab">2018</span>
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
                        <option value="finance" id="finance">Финансовый сектор</option>
                        <option value="electronetwork" id="electronetwork">Электросети</option>
                        <option value="metall" id="metall">Металлургия</option>
                        <option value="coal" id="coal">Уголь</option>
                        <option value="other" id="other">Прочие</option>
                    </select>
                    <input type="file" required placeholder="image" name="image" id="image"/><br>
                    <br>
                    <textarea placeholder="description" name="description" rows="5" cols="30"></textarea>
                    <textarea placeholder="Период внесения данных за последний год" name="info" rows="5" cols="30"></textarea>
                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2012</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2012" />
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2012"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2012"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2012"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2012"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2012"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2012"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2012"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2012</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2012"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2012"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2012"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2012"/>
                    <input type="Финансовый доход" value="0" placeholder="Финансовый доход" name="financealIncome2012"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2012"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2012"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2012</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2012"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2012"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2012"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2012"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2013</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2013"/>
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2013"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2013"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2013"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2013"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2013"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2013"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2013"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2013</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2013"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2013"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2013"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2013"/>
                    <input type="Финансовый доход" value="0" placeholder="Финансовый доход" name="financealIncome2013"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2013"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2013"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2013</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2013"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2013"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2013"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2013"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2014</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2014"/>
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2014"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2014"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2014"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2014"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2014"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2014"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2014"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2014</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2014"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2014"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2014"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2014"/>
                    <input type="Финансовый доход" value="0" placeholder="Финансовый доход" name="financealIncome2014"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2014"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2014"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2014</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2014"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2014"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2014"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2014"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2015</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2015"/>
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2015"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2015"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2015"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2015"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2015"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2015"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2015"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2015</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2015"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2015"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2015"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2015"/>
                    <input type="Финансовый доход" value="0" placeholder="Финансовый доход" name="financealIncome2015"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2015"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2015"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2015</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2015"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2015"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2015"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2015"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2016</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2016"/>
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2016"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2016"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2016"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2016"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2016"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2016"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2016"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2016</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2016"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2016"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2016"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2016"/>
                    <input type="Финансовый " value="0" placeholder="Финансовый доход" name="financealIncome2016"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2016"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2016"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2016</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2016"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2016"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2016"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2016"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2017</label>
                    <br>
                    <input type="Денежные средства" value="0" placeholder="Денежные средства" name="cash2017"/>
                    <input type="Внеоборотные активы" value="0" placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2017"/>
                    <input type="Оборотные активы" value="0" placeholder="Оборотные активы" name="currentAssets2017"/>
                    <input type="Итого активы" value="0" placeholder="Итого активы" name="totalAssets2017"/>
                    <input type="Краткосрочные обязательства" value="0" placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2017"/>
                    <input type="Долгосрочные обязательства" value="0" placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2017"/>
                    <input type="Итого обязательства" value="0" placeholder="Итого обязательства"
                           name="totalLiabilities2017"/>
                    <input type="Итого капитал" value="0" placeholder="Итого капитал" name="totalCapital2017"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2017</label>
                    <br>
                    <input type="Выручка" value="0" placeholder="Выручка" name="revenue2017"/>
                    <input type="Операционная прибыль" value="0" placeholder="Операционная прибыль"
                           name="operatingProfit2017"/>
                    <input type="Прибыль до налогов" value="0" placeholder="Прибыль до налогов" name="proofitBeforTax2017"/>
                    <input type="Читая прибыль" value="0" placeholder="Чистая прибыль" name="clearnProfit2017"/>
                    <input type="Финансовый доход" value="0" placeholder="Финансовый доход" name="financealIncome2017"/>
                    <input type="Финансовый расход" value="0" placeholder="Финансовый расход" name="financealExpenses2017"/>
                    <input type="Амортизация" value="0" placeholder="Амортизация" name="depreciation2017"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2017</label>
                    <br>
                    <input type="Количество АО" value="0" placeholder="Количество АО" name="numberAO2017"/>
                    <input type="Цена АО" value="0" placeholder="Цена АО" name="priceAO2017"/>
                    <input type="Количество АР" value="0" placeholder="Количество АР" name="numberAP2017"/>
                    <input type="Цена АР" value="0" placeholder="Цена АР" name="priceAP2017"/>

                </div>
                <div class="tab_item">
                    <label>Данные о балансе</label>
                    <label>2018</label>
                    <br>
                    <input type="Денежные средства" required placeholder="Денежные средства" name="cash2018"/>
                    <input type="Внеоборотные активы" required placeholder="Внеоборотные активы"
                           name="nonCurrentAssets2018"/>
                    <input type="Оборотные активы" required placeholder="Оборотные активы" name="currentAssets2018"/>
                    <input type="Итого активы" required placeholder="Итого активы" name="totalAssets2018"/>
                    <input type="Краткосрочные обязательства" required placeholder="Краткосрочные обязательства"
                           name="shortTermLiabilities2018"/>
                    <input type="Долгосрочные обязательства" required placeholder="Долгосрочные обязательства"
                           name="longTermLiabilities2018"/>
                    <input type="Итого обязательства" required placeholder="Итого обязательства"
                           name="totalLiabilities2018"/>
                    <input type="Итого капитал" required placeholder="Итого капитал" name="totalCapital2018"/>
                    <br>
                    <label>Финансовые данные</label>
                    <label>2018</label>
                    <br>
                    <input type="Выручка" required placeholder="Выручка" name="revenue2018"/>
                    <input type="Операционная прибыль" required placeholder="Операционная прибыль"
                           name="operatingProfit2018"/>
                    <input type="Прибыль до налогов" required placeholder="Прибыль до налогов" name="proofitBeforTax2018"/>
                    <input type="Читая прибыль" required placeholder="Чистая прибыль" name="clearnProfit2018"/>
                    <input type="Финансовый доход" required placeholder="Финансовый доход" name="financealIncome2018"/>
                    <input type="Финансовый расход" required placeholder="Финансовый расход" name="financealExpenses2018"/>
                    <input type="Амортизация" required placeholder="Амортизация" name="depreciation2018"/>
                    <br>
                    <label>Рыночные данные</label>
                    <label>2018</label>
                    <br>
                    <input type="Количество АО" required placeholder="Количество АО" name="numberAO2018"/>
                    <input type="Цена АО" required placeholder="Цена АО" name="priceAO2018"/>
                    <input type="Количество АР" required placeholder="Количество АР" name="numberAP2018"/>
                    <input type="Цена АР" required placeholder="Цена АР" name="priceAP2018"/>

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
<%--<input type="Финансовый доход" required placeholder="Финансовый доход" name="financealIncome"/>--%>
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



<c:if test="${not empty dataPush}">
    <script>
        window.addEventListener("load", function () {
            alert("${dataPush}");
        });
    </script>
</c:if>

<script>
    $(".tab_item").not(":first").hide();
    $(".wrapper .tab").click(function () {
        $(".wrapper .tab").removeClass("active").eq($(this).index()).addClass("active");
        $(".tab_item").hide().eq($(this).index()).fadeIn()
    }).eq(0).addClass("active");
</script>


</body>
</html>
