
<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="bg">
    <div class="row">
<%--        <div class="col-sm-12">--%>
<%--            <h2 class="title text-center">Contact <strong>Us</strong></h2>--%>
<%--            <div id="gmap" class="contact-map">--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="row">
            <div class="col-sm-8 pull-left">
                <div class="contact-form">
                    <h2 class="title text-center">Get In Touch</h2>
                    <div class="status alert alert-success" style="display: none"></div>
                    <form action="/introduce/send" class="contact-form row"  method="post">
                        <div class="form-group col-md-6">
                            <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="body" id="body" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <button type="submit" class="btn btn-default">Send</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="contact-info">
                    <h2 class="title text-center">Contact Info</h2>
                    <address>
                        <p>E-Shopper Inc.</p>
                        <p>Nguyễn Trãi, Hà Đông,Hà Nội</p>
                        <p>Việt Nam</p>
                        <p>Mobile:0396513434</p>
                        <p>Fax: 1-714-252-0026</p>
                        <p>Email:duc@gmail.com</p>
                    </address>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="footer.jsp"/>
