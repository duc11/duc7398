<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
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
            <th>Quantity</th>
            <th>UnitPrice</th>
            <th>Discount</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="r" items="${list.content}">
            <tr >
                <td>${r.productId}</td>
                <td>${r.name}</td>
                <td>${r.quantity}</td>
                <td>${r.price}</td>
                <td>${r.discount}</td>

                <td>
                    <a class="btn btn-sm btn-info" href="${b}/edit/${r.productId}">
                    Edit
                    </a>
                </td>
                <td>
                    <a data-id="${r.productId}"
                       data-name="${r.name}"
                       onclick="showConfirmModalDialog(this.getAttribute('data-id'),this.getAttribute('data-name'))" class="btn btn-sm btn-warning ">
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
                    <a class="page-link " href="/product/index?size=${list.size}&page=${1}">first</a></li>
                <c:forEach begin="1" step="1" end="${list.totalPages}" var="p">
                    <li class="page-item  <c:if test="${p==list.number+1}">active</c:if>">
                        <a class="page-link " href="/product/index?size=${list.size}&page=${p}">${p}</a></li>
                </c:forEach>
                <li class="page-item <c:if test="${list.totalPages==list.number+1}">active</c:if>">
                    <a class="page-link " href="/product/index?size=${list.size}&page=${list.totalPages}">last</a></li>
            </ul>
        </nav>
    </div>
    <script>
        function showConfirmModalDialog(id,name){
            $('#name').text(name);
            $('#yesOption').attr('href','/product/delete/'+ id);
            $('#conformationId').modal('show');
        }
    </script>
<jsp:include page="dialog.jsp"/>