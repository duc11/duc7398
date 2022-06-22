<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<h2>CHANGE PASSWORD
</h2>
<h4>${message}</h4>
<div class="container">
    <div class="row">
<div class="col-sm-8 padding-right">
    <form action="/account/change" method="post">
        <div class="form-group">
            <label >User Name:</label>
            <input class="form-control" name="id" >
        </div>
        <div class="form-group">
            <label >old Password:</label>
            <input class="form-control" name="pw1" >
        </div>
        <div class="form-group">
            <label >new Password:</label>
            <input class="form-control" name="pw2" >
        </div>
        <div class="form-group">
            <label >Repeat passwword</label>
            <input class="form-control" name="pw3" >
        </div>

        <button type="submit" class="btn btn-default">Change Password</button>
    </form>

</div>
    </div>
</div>
<jsp:include page="footer.jsp"/>