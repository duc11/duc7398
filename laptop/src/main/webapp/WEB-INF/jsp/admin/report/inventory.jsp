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

    <h2 class="alert alert-success">Inventory</h2>

    <table class="table table-hover" style="width:1500px" >
        <thead>
        <tr>
            <th>Category</th>
            <th>Quantity</th>
            <th>Value</th>
            <th>Min Price</th>
            <th>Max Price</th>
            <th>Avg Price</th>

            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="o" items="${data}">
            <tr >
                <td>${o[0]}</td>
                <td>${o[1]}</td>
                <td>${o[2]}</td>
                <td>${o[3]}</td>
                <td>${o[4]}</td>
<%--                <td>${o[5]}</td>--%>
<%--                <td><f:formatNumber type="String"  value=" ${o[2]}" maxFractionDigits="4" /> </td>--%>
<%--                td><f:formatNumber value=" ${o[3]}" pattern="#.###.00" />đ </td>--%>
<%--                td><f:formatNumber value=" ${o[4]}" pattern="#,###.00" />đ </td>--%>
               <td><f:formatNumber value=" ${o[5]}" pattern="#,###.00" />đ </td>

            </tr>
        </c:forEach>

        </tbody>
    </table>
    <jsp:include page="chart.jsp"/>