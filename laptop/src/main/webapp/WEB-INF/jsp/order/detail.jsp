<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <h2 style="color: red">Order InFo</h2>
    <form:form action=""  modelAttribute="info">
        <%--        <img src="/admin/images/customers/user1.png" width="100%">--%>
        <h4>${message}</h4>
        <div class="form-group">
            <label >OrderId</label>
            <form:input class="form-control" path="orderId" readonly="true" />
        </div>
        <div class="form-group">
            <label >Customer</label>
            <form:input class="form-control" path="customer.fullName" readonly="true" />
        </div>
        <div class="form-group">
            <label >OrderDate:</label>
            <form:input  class="form-control" path="orderDate" readonly="true" />
        </div>
        <div class="form-group">
            <label >Address:</label>
            <form:input class="form-control" path="address" readonly="true" />
        </div>
        <div class="form-group">
            <label >Amount:</label>
            <form:input class="form-control" path="amount" readonly="true"/>
        </div>
        <div class="form-group">
            <label >Note</label>
            <textarea type="text"rows="3" name="status" readonly="true"></textarea>
        </div>


    </form:form>
    <h2 style="color: red">Order Detail</h2>
    <table class="table" style="width:1500px" >
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>UnitPrice</th>
            <th>Discount</th>
            <th>Amount</th>
            <th></th>

        </tr>
        </thead>
        <tbody>

        <c:forEach var="p" items="${orders}">
            <tr >
                <td>${p.orderDetailId}</td>
                <td>${p.product.name}</td>
                <td>${p.quantity}</td>
                <td><f:formatNumber value="${p.unitPrice}" pattern="#,###" />đ</td>
                <td> <f:formatNumber value="${p.discount}" pattern="#"/>%</td>
                <td class="sum"><f:formatNumber value=" ${p.quantity*p.unitPrice*(1-p.discount/100)}" pattern="#,###"/>đ </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

