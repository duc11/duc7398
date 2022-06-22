<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="panel panel-default">
    <div class="panel-body">

        <form:form action="${b}/index" modelAttribute="entity" enctype="multipart/form-data">
            <div style="color: black"> <h1>Customer Form</h1></div>
            <h4>${message}</h4>
            <div class="row">
            <div class="form-group col-sm-6">
                <label >Id</label>
                <form:input class="form-control" path="customerId" readonly="${!empty entity.customerId}" />
            </div>
            <div class="form-group col-sm-6">
                <label >Name</label>
                <form:input  class="form-control" path="fullName" />
            </div>
            </div>
            <div class="row">
            <div class="form-group col-sm-6">
                <label >Password</label>
                <form:input class="form-control" path="password" />
            </div>
            <div class="form-group col-sm-6">
                <label >Email</label>
                <form:input  class="form-control" path="email" />
            </div>
            </div>
        <div class="row">
            <div class="form-group col-sm-6">
                <label >Activited</label>
                <div class="form-control">
                <form:radiobutton  path="activated" value="true" label="Yes"/>
                <form:radiobutton  path="activated" value="false" label="No"/>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label >Admin</label>
                <div class="form-control">
                    <form:radiobutton  path="admin" value="true" label="Admin"/>
<%--                    xóa formcontrol--%>
                    <form:radiobutton  path="admin" value="false" label="User"/>
                </div>
            </div>
            </div>
            <div class="form-group">
                <label >Photo</label>
                <input type="file" name="photo_file">
                <form:hidden  class="form-control" path="photo" />
            </div>
            <div class="form-group">
                <button class="btn btn-default primary" formaction="${b}/create">Create</button>
                <button class="btn btn-default warning" formaction="${b}/update" ${!empty entity.customerId?'':'disabled'} >Update</button>
                <a href="${b}/index" class="btn btn-default" >Reset</a>
            </div>
        </form:form>
    </div>

</div>

