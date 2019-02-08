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
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title><c:out value="${name}"/></title>
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
<br>
<c:out value="<%=description%>"/>


<br>
<div>
    <form method="get" action="${pageContext.request.contextPath}/EditInfo">
        <label>ВНЕСЕННЫЕ ДАННЫЕ ЗА ПОСЛЕДНИЙ ГОД СООТВЕТСТВУЮТ = ${info}</label>
        <input type="number" hidden name="name" value="${name}"/>
        <input type="number" hidden name="info" value="${info}"/>
        <input type="submit" value="Редактировать"/>
    </form>
</div>

<br>
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
        <th><p>EDIT</p></th>
    </tr>
    <c:forEach items="<%=mapData%>" var="map0" begin="0" end="0">
        <tr>
            <td>Денежные средства</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Денежные средства">
                <input type="text" hidden name="row" value="cash"/>
                <input type="text" hidden name="2012" value="${map0.value.cash}"/>
                <td>${map0.value.cash} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="number" hidden name="2013" value="${map1.value.cash}"/>
                    <td>${map1.value.cash} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="number" hidden name="2014" value="${map2.value.cash}"/>
                    <td>${map2.value.cash} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="number" hidden name="2015" value="${map3.value.cash}"/>
                    <td>${map3.value.cash} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="number" hidden name="2016" value="${map4.value.cash}"/>
                    <td>${map4.value.cash} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="number" hidden name="2017" value="${map5.value.cash}"/>
                    <td>${map5.value.cash} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="number" hidden name="2018" value="${map6.value.cash}"/>
                    <td>${map6.value.cash} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<input type="number" hidden name="2018" value="${map7.value.cash}"/>--%>
                    <%--<td>${map7.value.cash}&#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>

        </tr>
        <tr>
            <td>Оборотные активы</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Оборотные активы">
                <input type="text" hidden name="row" value="currentAssets"/>
                <input type="text" hidden name="2012" value="${map0.value.currentAssets}"/>
                <td>${map0.value.currentAssets} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.currentAssets}"/>
                    <td>${map1.value.currentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.currentAssets}"/>
                    <td>${map2.value.currentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.currentAssets}"/>
                    <td>${map3.value.currentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.currentAssets}"/>
                    <td>${map4.value.currentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.currentAssets}"/>
                    <td>${map5.value.currentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.currentAssets}"/>
                    <td>${map6.value.currentAssets} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.currentAssets} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Внеоборотные активы</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Внеоборотные активы">
                <input type="text" hidden name="row" value="nonCurrentAssets"/>
                <input type="text" hidden name="2012" value="${map0.value.nonCurrentAssets}"/>
                <td>${map0.value.nonCurrentAssets} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.nonCurrentAssets}"/>
                    <td>${map1.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.nonCurrentAssets}"/>
                    <td>${map2.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.nonCurrentAssets}"/>
                    <td>${map3.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.nonCurrentAssets}"/>
                    <td>${map4.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.nonCurrentAssets}"/>
                    <td>${map5.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.nonCurrentAssets}"/>
                    <td>${map6.value.nonCurrentAssets} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.nonCurrentAssets} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Итого активы</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Итого активы">
                <input type="text" hidden name="row" value="totalAssets"/>
                <input type="text" hidden name="2012" value="${map0.value.totalAssets}"/>
                <td>${map0.value.totalAssets} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.totalAssets}"/>
                    <td>${map1.value.totalAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.totalAssets}"/>
                    <td>${map2.value.totalAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.totalAssets}"/>
                    <td>${map3.value.totalAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.totalAssets}"/>
                    <td>${map4.value.totalAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.totalAssets}"/>
                    <td>${map5.value.totalAssets} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.totalAssets}"/>
                    <td>${map6.value.totalAssets} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.totalAssets} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Краткосрочные обстоятельства</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Краткосрочные обстоятельства">
                <input type="text" hidden name="row" value="shortTermLiabilities"/>
                <input type="text" hidden name="2012" value="${map0.value.shortTermLiabilities}"/>
                <td>${map0.value.shortTermLiabilities} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.shortTermLiabilities}"/>
                    <td>${map1.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.shortTermLiabilities}"/>
                    <td>${map2.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.shortTermLiabilities}"/>
                    <td>${map3.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.shortTermLiabilities}"/>
                    <td>${map4.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.shortTermLiabilities}"/>
                    <td>${map5.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.shortTermLiabilities}"/>
                    <td>${map6.value.shortTermLiabilities} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.shortTermLiabilities} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Долгосрочные обстоятельства</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Долгосрочные обстоятельства">
                <input type="text" hidden name="row" value="longTermLiabilities"/>
                <input type="text" hidden name="2012" value="${map0.value.longTermLiabilities}"/>
                <td>${map0.value.longTermLiabilities} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.longTermLiabilities}"/>
                    <td>${map1.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.longTermLiabilities}"/>
                    <td>${map2.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.longTermLiabilities}"/>
                    <td>${map3.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.longTermLiabilities}"/>
                    <td>${map4.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.longTermLiabilities}"/>
                    <td>${map5.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.longTermLiabilities}"/>
                    <td>${map6.value.longTermLiabilities} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.longTermLiabilities} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Итого обязательства</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Итого обязательства">
                <input type="text" hidden name="row" value="totalLiabilities"/>
                <input type="text" hidden name="2012" value="${map0.value.totalLiabilities}"/>
                <td>${map0.value.totalLiabilities} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.totalLiabilities}"/>
                    <td>${map1.value.totalLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.totalLiabilities}"/>
                    <td>${map2.value.totalLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.totalLiabilities}"/>
                    <td>${map3.value.totalLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.totalLiabilities}"/>
                    <td>${map4.value.totalLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.totalLiabilities}"/>
                    <td>${map5.value.totalLiabilities} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.totalLiabilities}"/>
                    <td>${map6.value.totalLiabilities} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.totalLiabilities} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Итого каапитал</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="dataaboutbalance"/>
                <input type="text" hidden name="colum" value="Итого каапитал">
                <input type="text" hidden name="row" value="totalCapital"/>
                <input type="text" hidden name="2012" value="${map0.value.totalCapital}"/>
                <td>${map0.value.totalCapital} &#8381</td>
                <c:forEach items="<%=mapData%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.totalCapital}"/>
                    <td>${map1.value.totalCapital} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.totalCapital}"/>
                    <td>${map2.value.totalCapital} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.totalCapital}"/>
                    <td>${map3.value.totalCapital} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.totalCapital}"/>
                    <td>${map4.value.totalCapital} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.totalCapital}"/>
                    <td>${map5.value.totalCapital} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapData%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.totalCapital}"/>
                    <td>${map6.value.totalCapital} &#8381</td>
                </c:forEach>
                    <%--<c:forEach items="<%=mapData%>" var="map7" begin="7" end="7">--%>
                    <%--<td>${map7.value.totalCapital} &#8381</td>--%>
                    <%--</c:forEach>--%>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
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
        <th><p>EDIT</p></th>
    </tr>
    <c:forEach items="<%=mapFinance%>" var="map0" begin="0" end="0">
        <tr>
            <td>Выручка</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Выручка">
                <input type="text" hidden name="row" value="revenue"/>
                <input type="text" hidden name="2012" value="${map0.value.revenue}"/>
                <td>${map0.value.revenue} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.revenue}"/>
                    <td>${map1.value.revenue} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.revenue}"/>
                    <td>${map2.value.revenue} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.revenue}"/>
                    <td>${map3.value.revenue} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.revenue}"/>
                    <td>${map4.value.revenue} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.revenue}"/>
                    <td>${map5.value.revenue} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.revenue}"/>
                    <td>${map6.value.revenue} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Операционная прибыль</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Операционная прибыль">
                <input type="text" hidden name="row" value="operatingProfit"/>
                <input type="text" hidden name="2012" value="${map0.value.operatingProfit}"/>
                <td>${map0.value.operatingProfit} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.operatingProfit}"/>
                    <td>${map1.value.operatingProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.operatingProfit}"/>
                    <td>${map2.value.operatingProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.operatingProfit}"/>
                    <td>${map3.value.operatingProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.operatingProfit}"/>
                    <td>${map4.value.operatingProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.operatingProfit}"/>
                    <td>${map5.value.operatingProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.operatingProfit}"/>
                    <td>${map6.value.operatingProfit} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Прибыль до налогов</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Прибыль до налогов">
                <input type="text" hidden name="row" value="proofitBeforTax"/>
                <input type="text" hidden name="2012" value="${map0.value.proofitBeforTax}"/>
                <td>${map0.value.proofitBeforTax} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.proofitBeforTax}"/>
                    <td>${map1.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.proofitBeforTax}"/>
                    <td>${map2.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.proofitBeforTax}"/>
                    <td>${map3.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.proofitBeforTax}"/>
                    <td>${map4.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.proofitBeforTax}"/>
                    <td>${map5.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.proofitBeforTax}"/>
                    <td>${map6.value.proofitBeforTax} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Чистая прибыль</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Чистая прибыль">
                <input type="text" hidden name="row" value="clearnProfit"/>
                <input type="text" hidden name="2012" value="${map0.value.clearnProfit}"/>
                <td>${map0.value.clearnProfit} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.clearnProfit}"/>
                    <td>${map1.value.clearnProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.clearnProfit}"/>
                    <td>${map2.value.clearnProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.clearnProfit}"/>
                    <td>${map3.value.clearnProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.clearnProfit}"/>
                    <td>${map4.value.clearnProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.clearnProfit}"/>
                    <td>${map5.value.clearnProfit} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.clearnProfit}"/>
                    <td>${map6.value.clearnProfit} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Финансовые доходы</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Финансовые доходы">
                <input type="text" hidden name="row" value="financealIncome"/>
                <input type="text" hidden name="2012" value="${map0.value.financealIncome}"/>
                <td>${map0.value.financealIncome} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.financealIncome}"/>
                    <td>${map1.value.financealIncome} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.financealIncome}"/>
                    <td>${map2.value.financealIncome} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.financealIncome}"/>
                    <td>${map3.value.financealIncome} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.financealIncome}"/>
                    <td>${map4.value.financealIncome} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.financealIncome}"/>
                    <td>${map5.value.financealIncome} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.financealIncome}"/>
                    <td>${map6.value.financealIncome} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Финансовые расходы</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Финансовые расходы">
                <input type="text" hidden name="row" value="financealExpenses"/>
                <input type="text" hidden name="2012" value="${map0.value.financealExpenses}"/>
                <td>${map0.value.financealExpenses} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.financealExpenses}"/>
                    <td>${map1.value.financealExpenses} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.financealExpenses}"/>
                    <td>${map2.value.financealExpenses} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.financealExpenses}"/>
                    <td>${map3.value.financealExpenses} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.financealExpenses}"/>
                    <td>${map4.value.financealExpenses} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.financealExpenses}"/>
                    <td>${map5.value.financealExpenses} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.financealExpenses}"/>
                    <td>${map6.value.financealExpenses} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Амортизация</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="financialdata"/>
                <input type="text" hidden name="colum" value="Амортизация">
                <input type="text" hidden name="row" value="depreciation"/>
                <input type="text" hidden name="2012" value="${map0.value.depreciation}"/>
                <td>${map0.value.depreciation} &#8381</td>
                <c:forEach items="<%=mapFinance%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.depreciation}"/>
                    <td>${map1.value.depreciation} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.depreciation}"/>
                    <td>${map2.value.depreciation} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.depreciation}"/>
                    <td>${map3.value.depreciation} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.depreciation}"/>
                    <td>${map4.value.depreciation} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.depreciation}"/>
                    <td>${map5.value.depreciation} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapFinance%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.depreciation}"/>
                    <td>${map6.value.depreciation} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
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
        <th><p>EDIT</p></th>
    </tr>
    <c:forEach items="<%=mapMarket%>" var="map0" begin="0" end="0">
        <tr>
            <td>Количество АО</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="marketdata"/>
                <input type="text" hidden name="colum" value="Количество АО">
                <input type="text" hidden name="row" value="numberAO"/>
                <input type="text" hidden name="2012" value="${map0.value.numberAO}"/>
                <td>${map0.value.numberAO}</td>
                <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.numberAO}"/>
                    <td>${map1.value.numberAO}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.numberAO}"/>
                    <td>${map2.value.numberAO}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.numberAO}"/>
                    <td>${map3.value.numberAO}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.numberAO}"/>
                    <td>${map4.value.numberAO}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.numberAO}"/>
                    <td>${map5.value.numberAO}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.numberAO}"/>
                    <td>${map6.value.numberAO}</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Цена АО</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="marketdata"/>
                <input type="text" hidden name="colum" value="Цена АО">
                <input type="text" hidden name="row" value="priceAO"/>
                <input type="text" hidden name="2012" value="${map0.value.priceAO}"/>
                <td>${map0.value.priceAO} &#8381</td>
                <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.priceAO}"/>
                    <td>${map1.value.priceAO} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.priceAO}"/>
                    <td>${map2.value.priceAO} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.priceAO}"/>
                    <td>${map3.value.priceAO} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.priceAO}"/>
                    <td>${map4.value.priceAO} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.priceAO}"/>
                    <td>${map5.value.priceAO} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.priceAO}"/>
                    <td>${map6.value.priceAO} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Количество АП</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="marketdata"/>
                <input type="text" hidden name="colum" value="Количество АП">
                <input type="text" hidden name="row" value="numberAP"/>
                <input type="text" hidden name="2012" value="${map0.value.numberAP}"/>
                <td>${map0.value.numberAP}</td>
                <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.numberAP}"/>
                    <td>${map1.value.numberAP}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.numberAP}"/>
                    <td>${map2.value.numberAP}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.numberAP}"/>
                    <td>${map3.value.numberAP}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.numberAP}"/>
                    <td>${map4.value.numberAP}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.numberAP}"/>
                    <td>${map5.value.numberAP}</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.numberAP}"/>
                    <td>${map6.value.numberAP}</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
        </tr>
        <tr>
            <td>Цена АП</td>
            <form method="get" action="${pageContext.request.contextPath}/Edit">
                <input type="text" hidden name="nameTable" value="marketdata"/>
                <input type="text" hidden name="colum" value="Цена АП">
                <input type="text" hidden name="row" value="priceAP"/>
                <input type="text" hidden name="2012" value="${map0.value.priceAP}"/>
                <td>${map0.value.priceAP} &#8381</td>
                <c:forEach items="<%=mapMarket%>" var="map1" begin="1" end="1">
                    <input type="text" hidden name="2013" value="${map1.value.priceAP}"/>
                    <td>${map1.value.priceAP} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map2" begin="2" end="2">
                    <input type="text" hidden name="2014" value="${map2.value.priceAP}"/>
                    <td>${map2.value.priceAP} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map3" begin="3" end="3">
                    <input type="text" hidden name="2015" value="${map3.value.priceAP}"/>
                    <td>${map3.value.priceAP} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map4" begin="4" end="4">
                    <input type="text" hidden name="2016" value="${map4.value.priceAP}"/>
                    <td>${map4.value.priceAP} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map5" begin="5" end="5">
                    <input type="text" hidden name="2017" value="${map5.value.priceAP}"/>
                    <td>${map5.value.priceAP} &#8381</td>
                </c:forEach>
                <c:forEach items="<%=mapMarket%>" var="map6" begin="6" end="6">
                    <input type="text" hidden name="2018" value="${map6.value.priceAP}"/>
                    <td>${map6.value.priceAP} &#8381</td>
                </c:forEach>
                <td><input type="submit" value="Редактировать"/></td>
            </form>
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
                <td>${map4.value.ROE} %</td>
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
            <td>${map0.value.EV} &#8381</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EV} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EV} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EV} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EV} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EV} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EV} &#8381</td>
            </c:forEach>
        </tr>
        <tr>
            <td>EBITDA</td>
            <td>${map0.value.EBITDA} &#8381</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.EBITDA} &#8381</td>
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
            <td>${map0.value.DEBT_EBITDA} &#8381</td>
            <c:forEach items="<%=multi%>" var="map1" begin="1" end="1">
                <td>${map1.value.DEBT_EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map2" begin="2" end="2">
                <td>${map2.value.DEBT_EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map3" begin="3" end="3">
                <td>${map3.value.DEBT_EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map4" begin="4" end="4">
                <td>${map4.value.DEBT_EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map5" begin="5" end="5">
                <td>${map5.value.DEBT_EBITDA} &#8381</td>
            </c:forEach>
            <c:forEach items="<%=multi%>" var="map6" begin="6" end="6">
                <td>${map6.value.DEBT_EBITDA} &#8381</td>
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


<c:if test="${not empty dataUpdate}">
    <script>
        window.addEventListener("load", function () {
            alert("${dataUpdate}");
        });
    </script>
</c:if>


</body>
</html>
