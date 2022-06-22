<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>

<body>

<div class="thankyou__title text-center">
    <div class="thankyou__logo text-center">
        <img src="/admin/images/products/thanhcong.png"width="10%" alt="icon-cart-thankyou">
        <div class="thankyou__heading">
            Đặt hàng thành công
        </div>
    </div>

</div>
<div class="thankyou__box-top text-center">
    Cảm ơn Quý khách <span class="user-name">đã chọn mua hàng tại Ducshop!
</div>
<p class="col-lg-offset-1" style=" color: #555;  text-align: left; ">Tài khoản của quý khách đã được tạo thành công! Quý khách có thể <a href="https://www.nguyenkim.com/thong-tin-tai-khoan.html" rel="nofollow" target="_blank"> cập nhật </a> tài khoản hoặc <a href="https://www.nguyenkim.com/login.html#dang-nhap-bang-sms" rel="nofollow" target="_blank"> Đăng nhập SMS </a> để truy cập tài khoản vào lần sau.</p>
<table class="table-delivery col-lg-offset-1 ">
    <tbody><tr>
        <th colspan="2" class="text-center"><b>Khu vực</b></th>
        <th style="width: 20%"><b>Thời gian giao hàng</b></th>
    </tr>
    <tr>
        <th rowspan="2">Khu vực Hồ Chí Minh, Hà Nội và các tỉnh lân cận</th>
        <td>Nội thành HCM/HN</td>
        <td class="text-center">1 - 3 ngày</td>
    </tr>
    <tr>
        <td>Ngoại thành HCM/HN và các tỉnh lân cận (trừ khu vực Vũng Tàu, Bình Phước)</td>
        <td class="text-center">4 - 7 ngày</td>
    </tr>
    <tr>
        <th rowspan="3">Khu vực các tỉnh/thành phố khác
        </th>
        <td>Nội thành</td>
        <td class="text-center">1 - 3 ngày</td>
    </tr>
    <tr>
        <td>Ngoại thành</td>
        <td class="text-center">3 - 5 ngày</td>
    </tr>
    <tr>
        <td>Giao hàng liên tỉnh</td>
        <td class="text-center">5 - 7 ngày</td>
    </tr>
    </tbody></table>

<h2 class="col-lg-offset-1">Danh sách đơn hàng</h2>

<table class="table " style="width:1500px" >
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Address</th>
        <th>OrderDate</th>
        <th>Amount</th>
        <th>Note</th>
        <th></th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${orders}">
        <tr >
            <td>${p.orderId}</td>
            <td>${p.customer.fullName}</td>
            <td>${p.address}</td>
            <td>${p.orderDate}</td>
            <td>${p.amount}</td>
            <td>${p.status}</td>
            <td>
                <a href="/order/detail/${p.orderId}" class="btn btn-sm btn-warning ">
                    Detail
                </a>
            </td>
            <td>
                <a href="/order/status/${p.orderId}" class="btn btn-sm btn-warning ">
                    Status
                </a>
            </td>
        </tr>

    </c:forEach>

    </tbody>
</table>




</body>
<jsp:include page="footer.jsp"/>

</html>
