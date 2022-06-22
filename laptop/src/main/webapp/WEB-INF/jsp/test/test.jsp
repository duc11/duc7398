<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h4 style="color: blueviolet;font-size: 30px">Chọn Lý Do Hủy</h4>
<form action="/order/huy" method="post" style="color: #3c763d;font-size: 25px">
    <input name="gender" type="radio" value="Muốn thay đổi địa chỉ giao hàng" />Muốn thay đổi địa chỉ giao hàng<br>
    <input name="gender" type="radio" value="Muốn nhập/thay đổi mã Voucher" />Muốn nhập/thay đổi mã Voucher<br>
    <input name="gender" type="radio" value="Muốn thay đổi sản phẩm trong đơn hàng (size, màu sắc, số lượng,...)" />Muốn thay đổi sản phẩm trong đơn hàng (size, màu sắc, số lượng,...)<br>
    <input name="gender" type="radio" value="Thủ tục thanh toán quá rắc rối" />Thủ tục thanh toán quá rắc rối<br>
    <input name="gender" type="radio" value="Tìm thấy giá rẻ hơn ở chỗ khác" />Tìm thấy giá rẻ hơn ở chỗ khác<br>
    <input name="gender" type="radio" value="Đổi ý, không muốn mua nữa" />Đổi ý, không muốn mua nữa<br>
    <input name="gender" type="radio" value="Khác" />Khác<br>
    <button class="btn btn-default primary">Xác nhận</button>
</form>