<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="col-sm-8 padding-right">
    <div class="signup-form"">
    <form:form action="/account/register" method="post" enctype="multipart/form-data" modelAttribute="form">
        <div style="color: black"> <h1>REGISTRATION</h1></div>
        <h4>${message}</h4>
        <div class="form-group">
            <label >
                <s:message code="user.id"/>
            </label>
            <form:input class="form-control" path="customerId" />
            <form:errors path="customerId"/>
        </div>
        <div class="form-group">
            <label ><s:message code="user.pw"/></label>
            <form:input type="password" class="form-control" path="password" />
            <form:errors path="password"/>
        </div>
        <div class="form-group">
            <label >Full Name:</label>
            <form:input class="form-control" path="fullName" />
            <form:errors path="fullName"/>
        </div>
        <div class="form-group">
            <label >Email:</label>
            <form:input class="form-control" path="email" />
            <form:errors path="email"/>
        </div>
        <div class="form-group">
            <label >Photo:</label>
            <input type="file" name="photo_file">
            <form:hidden class="form-control" path="photo" value="${photo}"/>
        </div>

        <button type="submit" class="btn btn-default">Register</button>
    </form:form>
</div>
</div>
<jsp:include page="footer.jsp"/>