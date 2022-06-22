<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
<div class="col-sm-8 padding-right ">
    <form:form action="/account/edit" method="post" enctype="multipart/form-data" modelAttribute="form">
        <h2>EDIT</h2>
        <h4>${message}</h4>
        <div class="form-group">
            <label >User Name:</label>
            <form:input class="form-control" path="customerId" readonly="true" />
        </div>
        <div class="form-group">
            <label >Full Name:</label>
            <form:input class="form-control" path="fullName" />
        </div>
        <div class="form-group">
            <label >Email:</label>
            <form:input class="form-control" path="email" />
        </div>
        <div class="form-group">
            <label>Photo:</label>
            <img src="/admin/images/customers/${form.photo}" style="width: 80px;height: 90px">
            <input type="file" name="photo_file">
            <form:hidden class="form-control" path="photo"/>
        </div>
        <form:hidden path="password"/>
        <form:hidden path="activated"/>
        <form:hidden path="admin"/>

        <button type="submit" class="btn btn-default">Update</button>
    </form:form>
</div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
