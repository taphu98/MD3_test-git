<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/28/2022
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test='${requestScope["message"]!=null}'>
    <span style="color: blue">${requestScope["message"]}</span>
</c:if>
<form method="post">
    <label >NAME</label><br>
    <input value="${requestScope["student"].getName()}" ><br>
    <label >AGE</label><br>
    <input value="${requestScope["student"].getAge()}" ><br>
    <p>ARE YOU SURE DELETE?</p>
    <button>YES</button>
</form>
<a href="/">NO and Back Menu</a>
</body>
</html>