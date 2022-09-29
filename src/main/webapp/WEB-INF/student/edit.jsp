<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 9/28/2022
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>

</head>
<body>
<h1>Edit Form</h1>
<form method="post">
    <label>TÊN</label><br>
    <input type="text" name="name" value='${requestScope["student"].getName()}' ><br>
    <label>TUỔI</label><br>
    <input type="text" name="age" value='${requestScope["student"].getAge()}' ><br>
    <button>Edit</button>
</form>
<c:if test='${requestScope["message"]!= null}'>
    <span style="color:blue">${requestScope["message"]}</span>
</c:if>
<a href="/">Back to menu</a>
</body>
</html>
