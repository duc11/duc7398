<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<style>
    table, th, td {
        border:1px solid black;
    }
</style>

    <body>

    <h2>List Order</h2>

    <table class="table table-hover" style="width:1500px" >
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>OrderDate</th>
            <th>Address</th>
            <th>Amount</th>
            <th>OrderStatus</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${list.content}">
            <tr >
                <td>${p.orderId}</td>
                <td>${p.customer.fullName}</td>
                <td>${p.orderDate}</td>
                <td>${p.address}</td>
                <td>${p.amount}đ</td>
                <td>${p.orderStatus}</td>
                <td>
                    <a class="btn btn-sm btn-info" href="${b}/edit/${p.orderId}">
                    Edit
                    </a>
                </td>
                <td>
                    <a data-id="${p.orderId}"
                       onclick="showConfirmModalDialog(this.getAttribute('data-id'))" class="btn btn-sm btn-warning ">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div class="text-center">
        <nav aria-label="Page navigation example <c:if test="${list.totalPages>0}"></c:if>">
            <ul class="pagination">
                <li class="page-item <c:if test="${1==list.number+1}">active</c:if>">
                    <a class="page-link " href="/order/index?size=${list.size}&page=${1}">first</a></li>
                <c:forEach begin="1" step="1" end="${list.totalPages}" var="p">
                    <li class="page-item  <c:if test="${p==list.number+1}">active</c:if>">
                        <a class="page-link " href="/order/index?size=${list.size}&page=${p}">${p}</a></li>
                </c:forEach>
                <li class="page-item <c:if test="${list.totalPages==list.number+1}">active</c:if>">
                    <a class="page-link " href="/order/index?size=${list.size}&page=${list.totalPages}">last</a></li>
            </ul>
        </nav>
    </div>
    <script>
        function showConfirmModalDialog(id){
            $('#yesOption').attr('href','/order/delete/'+ id);
            $('#conformationId').modal('show');
        }
    </script>
<jsp:include page="dialog.jsp"/>