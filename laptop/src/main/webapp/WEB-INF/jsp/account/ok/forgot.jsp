<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<h2>FORGOT</h2>
<h4>${message}</h4>
<div class="col-sm-8 padding-right">
    <div class="signup-form"">
    <form action="/account/forgot" method="post">
        <div class="form-group">
            <label >User Name:</label>
            <input class="form-control" name="id" >
        </div>
        <div class="form-group">
            <label >Email:</label>
            <input class="form-control" name="email" >
        </div>

        <button type="submit" class="btn btn-default">Lấy Password</button>
    </form>
</div>
<jsp:include page="footer.jsp"/>