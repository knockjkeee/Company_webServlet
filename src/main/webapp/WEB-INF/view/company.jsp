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
//    String test = (String) application.getAttribute("param1");
%>
<c:set var="name1" value="<%=nameCompany%>"/>
<h1><c:out value="<%= nameCompany%>"/></h1>
<%--<h1><c:out value="<%= test%>"/></h1>--%>

 <h1>COMPANY!!!!! + <c:out value="${name1}"/></h1>
</body>
</html>
