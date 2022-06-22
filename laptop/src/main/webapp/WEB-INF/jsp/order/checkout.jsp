<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <h2 style="color: red">List Cart</h2>
    <table class="table" style="width:1500px" >
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>UnitPrice</th>
            <th>Discount</th>
            <th>Amount</th>
            <th></th>

        </tr>
        </thead>
        <tbody>

        <c:forEach var="p" items="${sessionScope['scopedTarget.shoppingCartService'].items}">
            <tr >
                <td>${p.productId}</td>
                <td>${p.name}</td>
                <td><f:formatNumber value="${p.price}" pattern="#,###" />đ</td>
                <td> <f:formatNumber value="${p.discount}" pattern="#"/>%</td>
                <td class="sum"><f:formatNumber value=" ${p.quantity*p.price*(1-p.discount/100)}" pattern="#,###"/>đ </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
    <form:form action="/order/checkout" method="post"  modelAttribute="order">
<%--        <img src="/admin/images/customers/user1.png" width="100%">--%>
        <div style="color: red"> <h1>CHECKOUT</h1></div>
        <h4>${message}</h4>
        <div class="form-group">
            <label >Customer</label>
            <form:input class="form-control" path="customer.customerId" />
        </div>
        <div class="form-group">
            <label >OrderDate:</label>
            <form:input type="text" class="form-control" path="orderDate" />
        </div>
        <div class="form-group">
            <label >Address:</label>
            <form:input class="form-control" path="address" />
        </div>
        <div class="form-group">
            <label >Amount:</label>
            <form:input class="form-control" path="amount"  />
        </div>
        <div class="form-group">
            <label >Note</label>
            <textarea type="text"rows="3" name="status"></textarea>
        </div>

        <button type="submit" class="btn btn-default">Purache</button>
    </form:form>


