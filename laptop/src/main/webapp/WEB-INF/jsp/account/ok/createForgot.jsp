<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<h2>FORGOT</h2>
<h4>${message}</h4>
<div class="col-sm-8 padding-right">
    <div class="signup-form"">
    <form action="/account/reset" method="post">
        <div class="form-group">
            <label >User Name:</label>
            <input class="form-control" name="id" >
        </div>
        <div class="form-group">
            <label >NewPassword</label>
            <input class="form-control" name="password" >
        </div>
        <div class="form-group">
            <label >Xác nhận Password</label>
            <input class="form-control" name="resetPassword" >
        </div>

        <button type="submit" class="btn btn-default">Tạo mới</button>
    </form>
</div>
<jsp:include page="footer.jsp"/>