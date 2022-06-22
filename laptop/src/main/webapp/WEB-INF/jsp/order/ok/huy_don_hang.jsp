<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="col-lg-offset-3">
<h4 style="color: blueviolet;font-size: 30px">Chọn Lý Do Hủy</h4>
<form:form action="/order/huy/${order.orderId}" method="post" style="color: #3c763d;font-size: 25px" modelAttribute="order">
    <form:radiobutton path="" value="Muốn thay đổi địa chỉ giao hàng" /> Muốn thay đổi địa chỉ giao hàng<br>
    <form:radiobutton path=""  value="Muốn nhập/thay đổi mã Voucher" /> Muốn nhập/thay đổi mã Voucher<br>
    <form:radiobutton path=""  value="Muốn thay đổi sản phẩm trong đơn hàng (size, màu sắc, số lượng,...)" /> Muốn thay đổi sản phẩm trong đơn hàng (size, màu sắc, số lượng,...)<br>
    <form:radiobutton path=""  value="Thủ tục thanh toán quá rắc rối" /> Thủ tục thanh toán quá rắc rối<br>
    <form:radiobutton path="" value="Tìm thấy giá rẻ hơn ở chỗ khác" /> Tìm thấy giá rẻ hơn ở chỗ khác<br>
    <form:radiobutton path="" value="Đổi ý, không muốn mua nữa" /> Đổi ý, không muốn mua nữa<br>
    <form:radiobutton path="" value="Khác" /> Khác<br>
    <form:button class="btn btn-default primary"> Xác nhận</form:button>

</form:form>
</div>
<jsp:include page="footer.jsp"/>