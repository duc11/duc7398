        <%@page pageEncoding="UTF-8" %>
        <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
                <%@taglib prefix="s" uri="http://www.springframework.org/tags" %>

                <div class="left-sidebar">
                <c:set var="lang" value="${pageContext.response.locale.language}"/>
                <h2>
                <s:message code="layout.category.title"/>
                </h2>
                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordian" href="#laptop">
                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                ${(lang=='vi')?'May tinh xach tay':'Laptop'}
                </a>
                </h4>
                </div>
                <div id="laptop" class="panel-collapse collapse">
                <div class="list-group">
<%--                <c:set value="${pageContext.response.locale.language}" var="lang"/>--%>
                <c:forEach var="c" items="${cates}">
                        <a href="/product/list/${c.id}" class="list-group-item">${c.name}</a>
                </c:forEach>
                </div>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordian" href="#pc">
                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                ${(lang=='vi')?'May tinh ban':'PC'}
                </a>
                </h4>
                </div>
                <div id="pc" class="panel-collapse collapse">
                <div class="panel-body">
                <ul>
                <li><a href="/product/listPC/0"> ${(lang=='vi')?'Máy tính bàn Asus':'PC Asus'}</a></li>
                <li><a href="/product/listPC/1">${(lang=='vi')?'Máy tính bàn Dell':'PC Dell'}</a></li>
                <li><a href="/product/listPC/2">${(lang=='vi')?'Máy tính bàn HP':'PC HP'}</a></li>
                <li><a href="/product/listPC/3">${(lang=='vi')?'Máy tính ban Lenovo':'PC Lenovo'}</a></li>
                </ul>
                </div>
                </div>
                </div>

                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordian" href="#earphone">
                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                ${(lang=='vi')?'Tai nghe':'EarPhone'}
                </a>
                </h4>
                </div>
                <div id="earphone" class="panel-collapse collapse">
                <div class="panel-body">
                <ul>
                <li><a href="/product/listPT/0">ASUS ROG</a></li>
                </ul>
                </div>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/listPT/1">   ${(lang=='vi')?'Man hinh':'Screen'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/listPT/2">   ${(lang=='vi')?'Ban phim':'Keyboard'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/listPT/3">   ${(lang=='vi')?'Chuot':'Mouse'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/listPT/4">
                ${(lang=='vi')?'O cung':'Hard drive'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/listPT/5">Camera</a></h4>
                </div>
                </div>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">HDMI</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">Shoes</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
                </div><!--/category-products-->


                <div class="brands_products"><!--brands_products-->
                <h2>
                <s:message code="layout.brand.title"/>
                </h2>
                <div class="brands-name">
                <ul class="nav nav-pills nav-stacked">
                <c:forEach var="b" items="${brand}">
                <li><a href="/product/brand/${b.id}"> <span class="pull-right"></span>${b.name}</a></li>
                </c:forEach>
                </ul>
                </div>
                </div><!--/brands_products-->
<%--                <div class="special_product">--%>
<%--                <h2>Special_Product</h2>--%>
<%--                <div class="special-name">--%>
<%--                <ul class="nav nav-pills nav-stacked">--%>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">new products</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">Best Seller</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">Goods Of Interest</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
<%--                <div class="panel panel-default">--%>
<%--                <div class="panel-heading">--%>
<%--                <h4 class="panel-title"><a href="#">Discount</a></h4>--%>
<%--                </div>--%>
<%--                </div>--%>
<%--                </ul>--%>

<%--                </div>--%>
<%--                </div>--%>


                <div class="price-range"><!--price-range-->
                <h2>
                <s:message code="layout.price.title"/>
                </h2>
                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/price/1">
                ${(lang=='vi')?'Thap hon 10 trieu':'Less than 10 million'}
                </a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/price/2">  ${(lang=='vi')?'Tu 10 trieu den 15 trieu':'from 10 million than 15 million'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/price/3">${(lang=='vi')?'Tu 15 trieu den 20 trieu':'from 15 million than 20 million'}</a></h4>
                </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                <h4 class="panel-title"><a href="/product/price/4">
                ${(lang=='vi')?'Tren 10 trieu':'over 10 million'}</a></h4>
                </div>
                </div>

                <%--                <div class="panel panel-default">--%>
                <%--                <div class="panel-heading">--%>
                <%--                <h4 class="panel-title"><a href="#">HDMI</a></h4>--%>
                <%--                </div>--%>
                <%--                </div>--%>
                <%--                <div class="panel panel-default">--%>
                <%--                <div class="panel-heading">--%>
                <%--                <h4 class="panel-title"><a href="#">Shoes</a></h4>--%>
                <%--                </div>--%>
                <%--                </div>--%>
                </div><!--/category-products-->
                </div><!--/price-range-->

                <div class="shipping text-center"><!--shipping-->
                <img src="/admin/images/home/order.png"width="50%" alt="" />
                </div><!--/shipping-->

                </div>
