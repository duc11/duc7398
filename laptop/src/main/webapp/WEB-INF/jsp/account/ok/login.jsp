    <%@page pageEncoding="UTF-8" %>
    <jsp:include page="head.jsp"/>
    <jsp:include page="header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-1">
            <div class="login-form"><!--login form-->
                <h2>Login to your account</h2>
                <form action="/account/login" method="post">
                    <input type="text" placeholder="Name"class="form-control" name="id" value="${uid}" />
                    <input type="password" class="form-control" name="pw" value="${pw}" placeholder="password" />
                    <span>
								<input name="rm" type="checkbox" class="checkbox">
								Remember me?
							</span>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>
            </div><!--/login form-->
        </div>
    </div>
</div>
    <div class="row col-lg-offset-1">
        <div class="col-sm-3">
            <a href="https://www.facebook.com/messages/t/100030680343840" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:blue;color: white;border-radius: 3px;font-size: 15px;font-weight: bold;">Đăng nhập bằng facebook </a>

        </div>
        <div class="col-sm-3">
            <a href="/order/huy/${o.orderId}" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:red;color: #fff;border-radius: 3px;font-size: 15px;font-weight: bold;">Đăng nhập bằng google </a>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
<%----%>
