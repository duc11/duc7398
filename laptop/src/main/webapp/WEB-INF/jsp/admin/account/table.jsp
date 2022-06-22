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
            <th>UserNane</th>
            <th>Password</th>
            <th>Role</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${list}">
            <tr >
                <td>${c.username}</td>
                <td>${c.password}</td>
                <td>${c.role}</td>
                <td>
                    <a class="btn btn-sm btn-info" href="${b}/edit/${c.username}">
                    Edit
                    </a>
                </td>
                <td>
                      <a data-id="${c.username}"
                            data-name="${c.password}"
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
            $('#yesOption').attr('href','/delete/'+ id);
            $('#conformationId').modal('show');
        }
    </script>
    <jsp:include page="dialog.jsp"/>