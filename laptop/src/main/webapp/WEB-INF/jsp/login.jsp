<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!<!doctype html>
<html lang="en">
<head>
    <title>Login</title>
    <link href="<c:url value="/admin/css/main.admin.css"/>" rel="stylesheet">
</head>
<body>
<div class="login">
    <h2>
        Login
    </h2>
    <form action="/doLogin" method="post" id="product-form" modelAttribute="account">
    <input type="text" name="username" placeholder="username">
    <input type="password" name="password" placeholder="password">
    <button type="submit">Login</button>
</div>

</body>
</html>