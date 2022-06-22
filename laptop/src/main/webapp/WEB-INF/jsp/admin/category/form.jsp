<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="login-form">
        <form:form action="${b}/index" modelAttribute="entity">
            <div style="color: black"> <h1>Category Form</h1></div>
            <h4>${message}</h4>
            <div class="form-group">
                <label >Id</label>
                <form:input class="form-control" path="categoryId" />
            </div>
            <div class="form-group">
                <label >Name</label>
                <form:input  class="form-control" path="name" />
            </div>
            <div class="form-group">
                <button class="btn btn-default primary" formaction="${b}/create">Create</button>
                <button class="btn btn-default warning" formaction="${b}/update" ${!empty entity.categoryId?'':'disabled'} >Update</button>
                <a href="${b}/index" class="btn btn-default" >Reset</a>
            </div>
        </form:form>
    </div>
    </div>

</div>

