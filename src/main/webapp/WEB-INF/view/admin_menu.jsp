<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<form method="post" enctype="multipart/form-data">
    <div>
        <label>Главная карточка</label>
        <br>
        <input type="text" required placeholder="name" name="name" id="name"/>
        <input type="text" required placeholder="tiker" name="tiker" id="tiker"/>
        <input type="text" required placeholder="description" name="description" id="description"/>
        <input type="file" required placeholder="image" name="image" id="image"/>
    </div>
<br>
    <div>
        <label>Данные о балансе</label>
        <label>2012</label>
        <br>
        <input type="Денежные средства" required placeholder="Денежные средства" name="cash2012"/>
        <input type="Внеоборотные активы" required placeholder="Внеоборотные активы" name="nonCurrentAssets2012"/>
        <input type="Оборотные активы" required placeholder="Оборотные активы" name="currentAssets2012"/>
        <input type="Итого активы" required placeholder="Итого активы" name="totalAssets2012"/>
        <input type="Краткосрочные обязательства" required placeholder="Краткосрочные обязательства" name="shortTermLiabilities2012"/>
        <input type="Долгосрочные обязательства" required placeholder="Долгосрочные обязательства" name="longTermLiabilities2012"/>
        <input type="Итого обязательства" required placeholder="Итого обязательства" name="totalLiabilities2012"/>
        <input type="Итого капитал" required placeholder="Итого капитал" name="totalCapital2012"/>
    </div>
<br>



    <div>
        <input type="submit" value="Upload">
    </div>
</form>

<%--https://app.moqups.com/minakov86/JuxkQNdJlc/view/page/aa9df7b72--%>

</body>
</html>
