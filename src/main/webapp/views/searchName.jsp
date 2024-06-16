<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search and Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Product Search</h2>
    <form action="/product/search-and-page" method="get" class="form-inline mb-4">
        <input name="keywords" value="${keywords}" class="form-control mr-2">
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
    <table class="table table-bordered">
        <thead class="thead-Danger">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Create Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${page.content}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.createDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="/product/search-and-page?p=0">First</a></li>
            <li class="page-item"><a class="page-link" href="/product/search-and-page?p=${page.number-1}">Previous</a></li>
            <li class="page-item"><a class="page-link" href="/product/search-and-page?p=${page.number+1}">Next</a></li>
            <li class="page-item"><a class="page-link" href="/product/search-and-page?p=${page.totalPages-1}">Last</a></li>
        </ul>
    </nav>
    <ul class="list-group mt-4">
        <li class="list-group-item">Số thực thể hiện tại: ${page.numberOfElements}</li>
        <li class="list-group-item">Trang số: ${page.number+1}</li>
        <li class="list-group-item">Kích thước trang: ${page.size}</li>
        <li class="list-group-item">Tổng số thực thể: ${page.totalElements}</li>
        <li class="list-group-item">Tổng số trang: ${page.totalPages}</li>
    </ul>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
