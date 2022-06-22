    <%@page pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
        <header class="header" id="myHeader" ><!--header-->
        <div class="header_top" ><!--header_top-->
        <div class="container">
        <div class="row">
        <div class="col-sm-6">
        <div class="contactinfo">
        <ul class="nav nav-pills">
        <li><a href="#"><i class="fa fa-phone"></i> 0396513434</a></li>
        <li><a href="#"><i class="fa fa-envelope"></i> duc@gmail.com</li>
        </ul>
        </div>
        </div>
        <div class="col-sm-6">
        <div class="social-icons pull-right">
        <ul class="nav navbar-nav">
        <li><a href="https://www.facebook.com/longhoanghapro98/"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="https://developers.google.com/web/showcase/2015/googleplus"><i class="fa fa-google-plus"></i></a></li>
        </ul>
        </div>
        </div>
        </div>
        </div>
        </div><!--/header_top-->

        <div><!--header-middle-->
        <div class="container">
        <div class="row">
        <div class="col-sm-4">
        <div class="logo pull-left">
        <a href="${pageContext.request.contextPath}/home"><img src="/admin/images/home/logo.png"width="100%" alt="" /></a>
        </div>
        <div class="btn-group pull-right">
        <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
        language
        <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
        <li><a href="" data-lang="vi">Việt Nam</a></li>
        <li><a href="" data-lang="en">English</a></li>
        </ul>
        </div>

        </div>
        </div>
        <div class="col-sm-8">
            <ul class="nav navbar-nav collapse navbar-collapse">
            <li><a href="${pageContext.request.contextPath}/home" class="active">
        <s:message code="layout.header.home"/>
        </a></li>
            <li><a href="/introduce/about" class="active"><s:message code="layout.header.about"/> </a></li>
            <li><a href="/introduce/contact" class="active"><s:message code="layout.header.contact"/> </a></li>
            <li><a href="/introduce/feedback" class="active"><s:message code="layout.header.feed"/> </a></li>
            <li><a href="/introduce/faq" class="active">FAQs</a></li>
            <li class="dropdown"><a href="#"><s:message code="layout.header.account"/> <i class="fa fa-angle-down"></i></a>
            <c:choose>
                    <c:when test="${empty sessionScope.user}">
                            <ul role="menu" class="sub-menu">
                            <li><a href="/account/login"><s:message code="layout.header.account.login"/> </a></li>
                            <li><a href="/account/register"><s:message code="layout.header.account.regitration"/> </a></li>
                            </ul>
                    </c:when>
                    <c:otherwise>
                            <ul role="menu" class="sub-menu">
                            <li><a href="/account/logoff"><s:message code="layout.header.account.logoff"/> </a></li>
                            <li><a href="/account/forgot"><s:message code="layout.header.account.forgot"/> </a></li>
                            <li><a href="/account/change"><s:message code="layout.header.account.change"/> </a></li>
                            <li><a href="/account/edit"><s:message code="layout.header.account.update"/> </a></li>
                            <li><a href="/order/list"><s:message code="layout.header.account.order"/> </a></li>
                            <li><a href="/order/buy">
                            <s:message code="layout.header.account.good"/> </a></li>
                            </ul>
                    </c:otherwise>
            </c:choose>

            </li>
            <li><a href="/cart/list"><i id="cart-img" class="fa fa-shopping-cart"></i></a></li>
            </ul>
            <div class="search_box pull-right">
            <form action="/product/search" method="get">
            <input name="name" type="text" placeholder="<s:message code="layout.header.search"/> "/>
            </form>
            </div>
        </div>
        </div>
        </div>
        </div><!--/header-middle-->
        <div id="cart-fixed" onclick="location.href='/cart/list'">
        <i class="fa fa-shopping-cart">

        </i>
<%--        <p>Giỏ hàng của bạn <br><b>Có <span id="count_shopping_cart_store">0</span> sản phẩm</b></p>--%>
        </div>
        <div class="hotline-call" style="    position: fixed;bottom: 1px;left: 1px;z-index: 9999;overflow: hidden;">
        <a href="tel:02471069999"> <img src="/admin/images/customers/hotline-call.png"> </a>
        </div>

        <div class="fixed-fb-chat" style="    position: fixed;bottom: 1px;right: 1px;z-index: 9999;overflow: hidden;">
        <a href="https://www.facebook.com/longhoanghapro98/" id="goToMess" target="_blank"> <img src="/admin/images/customers/messenger-chat.png" alt="chat với shopDuc"> </a>
        </div>



        </header><!--/header-->
