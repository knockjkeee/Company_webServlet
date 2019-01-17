<%@ page import="model.companyInformation.DataAboutBalance" %>
<%@ page import="model.companyInformation.FinancialData" %>
<%@ page import="model.companyInformation.MarketData" %>
<%@ page import="model.companyInformation.TheMultiplier" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.TreeMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: prostov
  Date: 18.10.2018
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<img>

<%
    String nameCompany = (String) session.getAttribute("name");
    TreeMap<Integer, DataAboutBalance> mapData = (TreeMap<Integer, DataAboutBalance>) session.getAttribute("mapDataAboutBalance");
    TreeMap<Integer, FinancialData> mapFinance = (TreeMap<Integer, FinancialData>) session.getAttribute("mapFinancialData");
    TreeMap<Integer, MarketData> mapMarket = (TreeMap<Integer, MarketData>) session.getAttribute("mapMarketData");
    TreeMap<Integer, TheMultiplier> multi = (TreeMap<Integer, TheMultiplier>) session.getAttribute("multi");
    String teg = (String) session.getAttribute("imgBAse");
    String description = (String) session.getAttribute("description");
%>

<br>
<a href="<c:url value="/logout"/>">Вернуться на главную страницу</a>
<h3>Картинка</h3>
<img src="data:image/jpeg;base64,<%=teg%>">
<h3>Описание</h3>
<c:out value="<%=description%>"/>
<h3>Финансовая отчетность по МСФО</h3>
<table border="1">
    <tr>
        <th><p>Период</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>

</table>
<br>
<table border="1">
    <tr>
        <th><p>Данные о балансе</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>
    <c:forEach items="<%=mapData%>" var="map0" begin="0" end="0">
        <tr>
            <td>Денежные средства</td>
            <td>${map0.value.cash} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.cash} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.cash} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Оборотные активы</td>
            <td>${map0.value.currentAssets} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.currentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.currentAssets} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Внеоборотные активы</td>
            <td>${map0.value.nonCurrentAssets} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.nonCurrentAssets} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого активы</td>
            <td>${map0.value.totalAssets} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalAssets} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalAssets} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Краткосрочные обстоятельства</td>
            <td>${map0.value.shortTermLiabilities} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.shortTermLiabilities} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Долгосрочные обстоятельства</td>
            <td>${map0.value.longTermLiabilities} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.longTermLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.longTermLiabilities} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого обязательства</td>
            <td>${map0.value.totalLiabilities} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalLiabilities} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalLiabilities} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого каапитал</td>
            <td>${map0.value.totalCapital} &#8381</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalCapital} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalCapital} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalCapital} &#8381 </td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalCapital} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalCapital} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalCapital} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalCapital} &#8381</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
<br>
<table border="1">
    <tr>
        <th><p>Финансовые данные</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>
    <c:forEach items="<%=mapFinance%>" var="map0" begin="0" end="0">
        <tr>
            <td>Выручка</td>
            <td>${map0.value.revenue} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.revenue} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.revenue} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.revenue} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.revenue} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.revenue} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.revenue} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Операционная прибыль</td>
            <td>${map0.value.operatingProfit} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.operatingProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.operatingProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.operatingProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.operatingProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.operatingProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.operatingProfit} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Прибыль до налогов</td>
            <td>${map0.value.proofitBeforTax} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.proofitBeforTax} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.proofitBeforTax} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.proofitBeforTax} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.proofitBeforTax} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.proofitBeforTax} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.proofitBeforTax} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Чистая прибыль</td>
            <td>${map0.value.clearnProfit} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.clearnProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.clearnProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.clearnProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.clearnProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.clearnProfit} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.clearnProfit} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Финансовые доходы</td>
            <td>${map0.value.financealIncome} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.financealIncome} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.financealIncome} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.financealIncome} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.financealIncome} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.financealIncome} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.financealIncome} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Финансовые расходы</td>
            <td>${map0.value.financealExpenses} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.financealExpenses} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.financealExpenses} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.financealExpenses} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.financealExpenses} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.financealExpenses} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.financealExpenses} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Амортизация</td>
            <td>${map0.value.depreciation} &#8381</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.depreciation} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.depreciation} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.depreciation} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.depreciation} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.depreciation} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.depreciation} &#8381</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
<br>
<table border="1">
    <tr>
        <th><p>Рыночные данные</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>
    <c:forEach items="<%=mapMarket%>" var="map0" begin="0" end="0">
        <tr>
            <td>Количество АО</td>
            <td>${map0.value.numberAO}</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.numberAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.numberAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.numberAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.numberAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.numberAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.numberAO}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Цена АО</td>
            <td>${map0.value.priceAO} &#8381</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.priceAO} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.priceAO} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.priceAO} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.priceAO} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.priceAO} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.priceAO} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Количество АП</td>
            <td>${map0.value.numberAP}</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.numberAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.numberAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.numberAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.numberAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.numberAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.numberAP}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Цена АП</td>
            <td>${map0.value.priceAP} &#8381</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.priceAP} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.priceAP} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.priceAP} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.priceAP} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.priceAP} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.priceAP} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Капитализация</td>
            <td>${map0.value.capitalization} &#8381</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.capitalization} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.capitalization} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.capitalization} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.capitalization} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.capitalization} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.capitalization} &#8381</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>
<br>
<table border="1">
    <tr>
        <th><p>Мультипликаторы</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>
    <c:forEach items="<%=multi%>" var="map0" begin="0" end="0">
        <tr>
            <td>P_E</td>
            <td>${map0.value.p_E}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.p_E}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.p_E}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.p_E}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.p_E}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.p_E}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.p_E}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>ROE</td>
            <td>${map0.value.ROE} %</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.ROE} %</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.ROE} %</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.ROE} %</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.ROE} % </td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.ROE} %</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.ROE} %</td>
            </c:forEach>
        </tr>
        <tr>
            <td>EV</td>
            <td>${map0.value.EV}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EV}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>EBITDA</td>
            <td>${map0.value.EBITDA}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EBITDA}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>EV_EBITDA</td>
            <td>${map0.value.EV_EBITDA}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EV_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EV_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EV_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EV_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EV_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EV_EBITDA}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>P_BV</td>
            <td>${map0.value.p_BV}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.p_BV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.p_BV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.p_BV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.p_BV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.p_BV}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.p_BV}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>P_S</td>
            <td>${map0.value.p_S}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.p_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.p_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.p_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.p_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.p_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.p_S}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>EV_S</td>
            <td>${map0.value.EV_S}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EV_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EV_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EV_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EV_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EV_S}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EV_S}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>DEBT_EBITDA</td>
            <td>${map0.value.DEBT_EBITDA}</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.DEBT_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.DEBT_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.DEBT_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.DEBT_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.DEBT_EBITDA}</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.DEBT_EBITDA}</td>
            </c:forEach>
        </tr>
    </c:forEach>

</table>
<br>
<table border="1">
    <tr>
        <th><p>Дивиденды</p></th>
        <th><p>2012</p></th>
        <th><p>2013</p></th>
        <th><p>2014</p></th>
        <th><p>2015</p></th>
        <th><p>2016</p></th>
        <th><p>2017</p></th>
        <th><p>2018</p></th>
    </tr>
</table>
</body>
</html>
