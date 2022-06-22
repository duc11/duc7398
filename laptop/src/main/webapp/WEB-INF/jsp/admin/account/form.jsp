<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="login-form">
        <form:form action="${b}/index" modelAttribute="entity">
            <div style="color: black"> <h1>Account Form</h1></div>
            <h4>${message}</h4>
            <div class="form-group">
                <label >username</label>
                <form:input class="form-control" path="username" />
            </div>
            <div class="form-group">
                <label >password</label>
                <form:input  class="form-control" path="password" />
            </div>
            <div class="form-group">
                <label >role</label>
                <form:input class="form-control" path="role" />
            </div>
            <div class="form-group">
                <button class="btn btn-default primary" formaction="${b}/create">Create</button>
                <button class="btn btn-default warning" formaction="${b}/update" ${!empty entity.username?'':'disabled'} >Update</button>
                <a href="${b}/index" class="btn btn-default" >Reset</a>
            </div>
        </form:form>
    </div>
    </div>

</div>

