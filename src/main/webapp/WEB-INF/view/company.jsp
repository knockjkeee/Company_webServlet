<%@ page import="model.companyInformation.DataAboutBalance" %>
<%@ page import="model.companyInformation.FinancialData" %>
<%@ page import="model.companyInformation.MarketData" %>
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
<body>

<%

    String nameCompany = (String) session.getAttribute("name");

//    DataAboutBalance dataAboutBalance = (DataAboutBalance) session.getAttribute("dataAboutBalance");
//    FinancialData financialData = (FinancialData) session.getAttribute("financialData");
//    MarketData marketData = (MarketData) session.getAttribute("marketData");
//    ArrayList<DataAboutBalance> listData = new ArrayList<>();
//    listData.add(dataAboutBalance);
//    ArrayList<FinancialData> listFinance = new ArrayList<>();
//    listFinance.add(financialData);
//    ArrayList<MarketData> listMarket = new ArrayList<>();
//    listMarket.add(marketData);
//
//    HashMap<String, DataAboutBalance> maping = (HashMap<String, DataAboutBalance>) session.getAttribute("map");
    TreeMap<Integer, DataAboutBalance> mapData = (TreeMap<Integer, DataAboutBalance>) session.getAttribute("mapDataAboutBalance");
    TreeMap<Integer, FinancialData> mapFinance = (TreeMap<Integer, FinancialData>) session.getAttribute("mapFinancialData");
    TreeMap<Integer, MarketData> mapMarket = (TreeMap<Integer, MarketData>) session.getAttribute("mapMarketData");

%>

<h3><c:out value="<%= nameCompany%>"/></h3>


<table border="1">
    <%--<c:forEach items="<%=mapFinance%>" var="map">--%>
    <%--&lt;%&ndash;&lt;%&ndash;<a>${map.key}</a><br>&ndash;%&gt;&ndash;%&gt;--%>
    <%--&lt;%&ndash;<a>${map.value.cash}</a><br>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<a>${map.value.nonCurrentAssets}</a><br>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<a>${map.value.longTermLiabilities}</a><br>&ndash;%&gt;--%>
    <%--<tr>--%>
    <%--<td>Денежные средства1</td>--%>
    <%--<td>${map.value.clearnProfit}</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Денежные средства2</td>--%>
    <%--<td>${map.value.depreciation}</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Денежные средства3</td>--%>
    <%--<td>${map.value.financealExpenses}</td>--%>
    <%--</tr>--%>
    <%--</c:forEach>--%>
</table>

<br>

<a href="<c:url value="/logout"/>">Вернуться на главную страницу</a>

<h3>Картинка</h3>
<img src="data:image/jpeg;base64,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">
<h3>Описание</h3>

<%--TODO  add all Function--%>

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
            <td>${map0.value.cash}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.cash}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.cash}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Оборотные активы</td>
            <td>${map0.value.currentAssets}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.currentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.currentAssets}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Внеоборотные активы</td>
            <td>${map0.value.nonCurrentAssets}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.nonCurrentAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.nonCurrentAssets}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого активы</td>
            <td>${map0.value.totalAssets}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalAssets}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalAssets}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Краткосрочные обстоятельства</td>
            <td>${map0.value.shortTermLiabilities}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.shortTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.shortTermLiabilities}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Долгосрочные обстоятельства</td>
            <td>${map0.value.longTermLiabilities}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.longTermLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.longTermLiabilities}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого обязательства</td>
            <td>${map0.value.totalLiabilities}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalLiabilities}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalLiabilities}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Итого каапитал</td>
            <td>${map0.value.totalCapital}</td>
            <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                <td>${map1.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                <td>${map2.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                <td>${map3.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                <td>${map4.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                <td>${map5.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                <td>${map6.value.totalCapital}</td>
            </c:forEach>
            <c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">
                <td>${map7.value.totalCapital}</td>
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
            <td>${map0.value.revenue}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.revenue}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.revenue}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.revenue}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.revenue}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.revenue}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.revenue}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Операционная прибыль</td>
            <td>${map0.value.operatingProfit}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.operatingProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.operatingProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.operatingProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.operatingProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.operatingProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.operatingProfit}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Прибыль до налогов</td>
            <td>${map0.value.proofitBeforTax}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.proofitBeforTax}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.proofitBeforTax}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.proofitBeforTax}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.proofitBeforTax}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.proofitBeforTax}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.proofitBeforTax}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Чистая прибыль</td>
            <td>${map0.value.clearnProfit}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.clearnProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.clearnProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.clearnProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.clearnProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.clearnProfit}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.clearnProfit}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Финансовые доходы</td>
            <td>${map0.value.financealIncome}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.financealIncome}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.financealIncome}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.financealIncome}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.financealIncome}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.financealIncome}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.financealIncome}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Финансовые расходы</td>
            <td>${map0.value.financealExpenses}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.financealExpenses}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.financealExpenses}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.financealExpenses}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.financealExpenses}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.financealExpenses}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.financealExpenses}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Амортизация</td>
            <td>${map0.value.depreciation}</td>
            <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                <td>${map1.value.depreciation}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                <td>${map2.value.depreciation}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                <td>${map3.value.depreciation}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                <td>${map4.value.depreciation}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                <td>${map5.value.depreciation}</td>
            </c:forEach>
            <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                <td>${map6.value.depreciation}</td>
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
            <td>${map0.value.priceAO}</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.priceAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.priceAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.priceAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.priceAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.priceAO}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.priceAO}</td>
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
            <td>${map0.value.priceAP}</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.priceAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.priceAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.priceAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.priceAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.priceAP}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.priceAP}</td>
            </c:forEach>
        </tr>
        <tr>
            <td>Капитализация</td>
            <td>${map0.value.capitalization}</td>
            <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                <td>${map1.value.capitalization}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                <td>${map2.value.capitalization}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                <td>${map3.value.capitalization}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                <td>${map4.value.capitalization}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                <td>${map5.value.capitalization}</td>
            </c:forEach>
            <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                <td>${map6.value.capitalization}</td>
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
