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

    <body>

    <h2>List Cart</h2>

    <table class="table table-hover" style="width:1500px" >
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>UnitPrice</th>
            <th>Discount</th>
            <th>Quantity</th>
            <th>Amount</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${list1}">
            <tr >
                <td>${c.orderDetailId}</td>
                <td>${c.product.name}</td>
                <td><f:formatNumber value=" ${c.unitPrice}" pattern="#,###" />đ </td>
                <td><f:formatNumber value=" ${c.discount}" pattern="#" />% </td>
                <td>${c.quantity}</td>
                <td><f:formatNumber value="${c.unitPrice*c.quantity*(1-c.discount/100)}" pattern="#,###"/>đ </td>

            </tr>
        </c:forEach>

        </tbody>
    </table>