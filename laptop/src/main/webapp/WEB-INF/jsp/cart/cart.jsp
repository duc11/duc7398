<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>
<div class="col-sm-8 padding-right">
<body>

<h2>List Cart</h2>

<table class="table" style="width:1500px" >
    <thead>
    <tr>
        <th>Item</th>
        <th>Name</th>
        <th>UnitPrice</th>
        <th>Quantity</th>
        <th>Discount</th>
        <th>Amount</th>
        <th>
        </th>
        <th></th>

    </tr>
    </thead>
    <tbody>
    <c:set var="c" value="${sessionScope['scopedTarget.shoppingCartService']}"/>
    <c:forEach var="p" items="${sessionScope['scopedTarget.shoppingCartService'].items}">
        <tr data-id="${p.productId}" data-price="${p.price}" data-discount="${p.discount/100}">
            <td>${p.productId}</td>
            <td>${p.name}</td>
            <td><f:formatNumber value="${p.price}" pattern="#,###" />đ</td>
            <td><input value="${p.quantity}" type="number" min="1" style="width: 60px"></td>
            <td> <f:formatNumber value="${p.discount}" pattern="#"/>%</td>
            <td class="sum"><f:formatNumber value=" ${p.quantity*p.price*(1-p.discount/100)}" pattern="#,###"/>đ </td>
            <td>
                <a data-id="${p.productId}"
                   data-name="${p.name}"
                   onclick="showConfirmModalDialog(this.getAttribute('data-id'),this.getAttribute('data-name'))" class="btn btn-sm btn-warning ">
                    Delete
                </a>
            </td>
            <td style="color: black;font-size: 16px"><a href="/cart/list">Update</a> </td>
        </tr>
    </c:forEach>
    <td colspan="2">
      <div style>
          <b>Payment</b>
      </div>
    </td>
    <td colspan="4" style="line-height:22px; color:#555">
        <b id="cart-c">Total item:${c.count}</b> mặt hàng<br>
        <b id="cart-a">Total payments :<f:formatNumber value="${c.amount}" pattern="#,###"/></b> đ<br>



    </td>
    </tbody>
</table>
<script>
    function showConfirmModalDialog(id,name){
        $('#name').text(name);
        $('#yesOption').attr('href','/category/delete/'+ id);
        $('#conformationId').modal('show');
    }
</script>
<jsp:include page="dialog.jsp"/>
<button class="btn btn-sm btn-danger btn-cart-clear" >Clear</button>
<a href="" class="btn btn-sm btn-info">continue</a>
<a href="/order/checkout" class="btn btn-sm btn-success">Checkout</a>



</body>
</div>
<jsp:include page="dialog.jsp"/>
</html>
