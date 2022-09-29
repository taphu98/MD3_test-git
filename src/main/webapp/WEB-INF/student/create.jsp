<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 9/28/2022
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>w
<h1>Form Create</h1>
<c:if test='${requestScope["message"]!= null}'>
    <span style="color:blue">${requestScope["message"]}</span>
</c:if>
<form method="post">
    <label>NAME</label><br>
    <input type="text" name="name"><br>
    <label>AGE</label><br>
    <input type="text" name="age"><br>
    <button>Create</button>
</form>
<a href="/">Back to menu</a>
</body>
</html>
