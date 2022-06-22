    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
    <footer id="footer"><!--Footer-->
        <div class="footer-top">
        <div class="container">
        <div class="row">
        <div class="col-sm-2">
        <div class="companyinfo">
        <h2><span>Duc</span>-shopper</h2>
        <p>Genuine and trustworthy laptop shop</p>
        </div>
        </div>
<%--        <div class="col-sm-7">--%>
<%--        <div class="col-sm-3">--%>
<%--        <div class="video-gallery text-center">--%>
<%--        <a href="#">--%>
<%--        <div class="iframe-img">--%>
<%--        <img src="/admin/images/home/bac.jpg" alt="" />--%>
<%--        </div>--%>
<%--        <div class="overlay-icon">--%>
<%--        <i class="fa fa-play-circle-o"></i>--%>
<%--        </div>--%>
<%--        </a>--%>
<%--        <p>Circle of Hands</p>--%>
<%--        <h2>24 DEC 2022</h2>--%>
<%--        </div>--%>
<%--        </div>--%>

<%--        <div class="col-sm-3">--%>
<%--        <div class="video-gallery text-center">--%>
<%--        <a href="#">--%>
<%--        <div class="iframe-img">--%>
<%--        <img src="/admin/images/home/bac1.jpg" alt="" />--%>
<%--        </div>--%>
<%--        <div class="overlay-icon">--%>
<%--        <i class="fa fa-play-circle-o"></i>--%>
<%--        </div>--%>
<%--        </a>--%>
<%--        <p>Circle of Hands</p>--%>
<%--        <h2>24 DEC 2022</h2>--%>
<%--        </div>--%>
<%--        </div>--%>

<%--        <div class="col-sm-3">--%>
<%--        <div class="video-gallery text-center">--%>
<%--        <a href="#">--%>
<%--        <div class="iframe-img">--%>
<%--        <img src="/admin/images/home/bac2.jpg" alt="" />--%>
<%--        </div>--%>
<%--        <div class="overlay-icon">--%>
<%--        <i class="fa fa-play-circle-o"></i>--%>
<%--        </div>--%>
<%--        </a>--%>
<%--        <p>Circle of Hands</p>--%>
<%--        <h2>24 DEC 2022</h2>--%>
<%--        </div>--%>
<%--        </div>--%>

<%--        <div class="col-sm-3">--%>
<%--        <div class="video-gallery text-center">--%>
<%--        <a href="#">--%>
<%--        <div class="iframe-img">--%>
<%--        <img src="/admin/images/home/bac3.jpg" alt="" />--%>
<%--        </div>--%>
<%--        <div class="overlay-icon">--%>
<%--        <i class="fa fa-play-circle-o"></i>--%>
<%--        </div>--%>
<%--        </a>--%>
<%--        <p>Circle of Hands</p>--%>
<%--        <h2>24 DEC 2022</h2>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        </div>--%>
        <div class="col-sm-3">
        <div class="address">
        <img src="/admin/images/home/map.png" alt="" />
        <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
        </div>
        </div>
        </div>
        </div>
        </div>

        <div class="footer-widget">
        <div class="container">
        <div class="row">
        <div class="col-sm-2">
        <div class="single-widget">
        <h2><s:message code="layout.footer.service"/> </h2>
        <ul class="nav nav-pills nav-stacked">
        <li><a href="/introduce/about"><s:message code="layout.footer.service.online"/> </a></li>
        <li><a href="/introduce/contact"><s:message code="layout.footer.service.contact"/> </a></li>
        <li><a href="/introduce/feedback">
        <s:message code="layout.footer.service.feedback"/> </a></li>
        <li><a href="/introduce/404"><s:message code="layout.footer.service.location"/> </a></li>
        </ul>
        </div>
        </div>
<%--        <div class="col-sm-2">--%>
<%--        <div class="single-widget">--%>
<%--        <h2>Quock Shop</h2>--%>
<%--        <ul class="nav nav-pills nav-stacked">--%>
<%--        <li><a href="#">T-Shirt</a></li>--%>
<%--        <li><a href="#">Mens</a></li>--%>
<%--        <li><a href="#">Womens</a></li>--%>
<%--        <li><a href="#">Gift Cards</a></li>--%>
<%--        <li><a href="#">Shoes</a></li>--%>
<%--        </ul>--%>
<%--        </div>--%>
<%--        </div>--%>
        <div class="col-sm-2">
        <div class="single-widget">
        <h2><s:message code="layout.footer.policy"/> </h2>
        <ul class="nav nav-pills nav-stacked">
        <li><a href="/introduce/404"><s:message code="layout.footer.tem"/> </a></li>
        <li><a href="/introduce/policy"><s:message code="layout.footer.privecy"/> </a></li>
        <li><a href="/introduce/refund">
        <s:message code="layout.footer.warranty"/> </a></li>
        <li><a href="/introduce/404"><s:message code="layout.footer.billing"/> </a></li>
        </ul>
        </div>
        </div>
        <div class="col-sm-2">
        <div class="single-widget">
        <h2><s:message code="layout.footer.shopper"/> </h2>
        <ul class="nav nav-pills nav-stacked">
        <li><a href="/introduce/company"><s:message code="layout.footer.shopper.company"/> </a></li>
        <li><a href="/introduce/404"><s:message code="layout.footer.shopper.careers"/> </a></li>
        <li><a href="/introduce/404"><s:message code="layout.footer.shopper.store"/> </a></li>
        <li><a href="/introduce/404"><s:message code="layout.footer.shopper.affillate"/> </a></li>
        </ul>
        </div>
        </div>
        <div class="col-sm-3 col-sm-offset-1">
        <div class="single-widget">
        <h2><s:message code="layout.footer.shopper"/> </h2>
        <form action="#" class="searchform">
        <input type="text" placeholder="<s:message code="layout.footer.shopper.email"/> " />
        <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
        <p><s:message code="layout.footer.shopper.recive"/> </p>
        </form>
        </div>
        </div>

        </div>
        </div>
        </div>

        <div class="footer-bottom">
        <div class="container">
        <div class="row">
        <p class="pull-left">Copyright © 2022 DUC-SHOPPER Inc. All rights reserved.</p>
        <p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
        </div>
        </div>
        </div>

        </footer><!--/Footer-->