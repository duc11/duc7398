<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${list}">
            <tr >
                <td>${c.categoryId}</td>
                <td>${c.name}</td>
                <td>
                    <a class="btn btn-sm btn-info" href="${b}/edit/${c.categoryId}">
                    Edit
                    </a>
                </td>
                <td>
                      <a data-id="${c.categoryId}"
                            data-name="${c.name}"
                            onclick="showConfirmModalDialog(this.getAttribute('data-id'),this.getAttribute('data-name'))" class="btn btn-sm btn-warning ">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>

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