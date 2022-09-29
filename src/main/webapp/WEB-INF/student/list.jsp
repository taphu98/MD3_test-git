<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        h1{
            text-align: center;
            color: brown;
        }
        table{
           text-align: center;
            border-collapse: collapse;
        }
        th{
            color: darkviolet;
        }
        td{
            color: blue;
        }
        #create{
            color: red;
        }
        #edit{
            color: green;
        }
    </style>
</head>
<body>
<h1><%= "------- STUDENT MANAGE --------" %>
</h1>
<br/>
<button ><a id="create" href="students?action=create">Create Student</a></button>
<table border="1" width="100%"   class="table table-dark">
    <tr class="table-primary">
        <th>STT</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Edit</th>
    </tr>
    <c:forEach var="st" items='${requestScope["listStudent"]}'>
        <tr class="table-secondary">
            <td class="table-warning">${st.id}</td>
            <td class="table-warning">${st.name}</td>
            <td class="table-warning">${st.age}</td>
            <td class="table-warning">
                <a id="edit" href="students?action=edit&id=${st.id}"><i class="bi bi-pencil-fill"></i> Edit</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>