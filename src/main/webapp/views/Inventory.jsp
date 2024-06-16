<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Summary</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Product Summary</h1>
    <table class="table table-bordered table-striped">
        <thead class="table-Danger">
        <tr>
            <th scope="col">Loại hàng</th>
            <th scope="col">Tổng giá</th>
            <th scope="col">Số sản phẩm</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${items}">
            <tr>
                <td>${item.name}</td>
                <td>${item.sum}</td>
                <td>${item.count}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
