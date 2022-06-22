<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>

    <div class="features_items"><!--features_items-->
        <h2 class="title text-center"><s:message code="layout.body.feature"/> </h2>
        <c:forEach var="p" items="${listHome}">
            <div class="col-sm-4">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <img src="/admin/images/product/${p.image}">
                            <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                            <p>${p.name}</p>
                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to
                                cart</a>
                        </div>
                        <div class="product-overlay">
                            <div class="overlay-content">
                                <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
<%--                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add--%>
<%--                                    to cart</a>--%>
                            </div>
                        </div>
                    </div>
                    <div class="choose">
                        <div class="text-center" data-id="${p.productId}">
                            <button class="btn btn-sm btn-danger btn-add-cart">
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                            </button>
                            <button class="btn btn-sm btn-warning btn-star">
                                <i class="	glyphicon glyphicon-star"></i>
                            </button>
                            <button class="btn btn-sm btn-success btn-open" data-toggle="modal" data-target="#myModal">
                                <i class="glyphicon glyphicon-envelope"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <%--        <div class="col-sm-4">--%>
        <%--            <div class="product-image-wrapper">--%>
        <%--                <div class="single-products">--%>
        <%--                    <div class="productinfo text-center">--%>
        <%--                        <img src="/admin/images/product/4.png" alt="" />--%>
        <%--                        <h2>$56</h2>--%>
        <%--                        <p>Easy Polo Black Edition</p>--%>
        <%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                    </div>--%>
        <%--                    <div class="product-overlay">--%>
        <%--                        <div class="overlay-content">--%>
        <%--                            <h2>$56</h2>--%>
        <%--                            <p>Easy Polo Black Edition</p>--%>
        <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--                <div class="choose">--%>
        <%--                    <ul class="nav nav-pills nav-justified">--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <div class="col-sm-4">--%>
        <%--            <div class="product-image-wrapper">--%>
        <%--                <div class="single-products">--%>
        <%--                    <div class="productinfo text-center">--%>
        <%--                        <img src="/admin/images/product/5.png" alt="" />--%>
        <%--                        <h2>$56</h2>--%>
        <%--                        <p>Easy Polo Black Edition</p>--%>
        <%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                    </div>--%>
        <%--                    <div class="product-overlay">--%>
        <%--                        <div class="overlay-content">--%>
        <%--                            <h2>$56</h2>--%>
        <%--                            <p>Easy Polo Black Edition</p>--%>
        <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--                <div class="choose">--%>
        <%--                    <ul class="nav nav-pills nav-justified">--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <div class="col-sm-4">--%>
        <%--            <div class="product-image-wrapper">--%>
        <%--                <div class="single-products">--%>
        <%--                    <div class="productinfo text-center">--%>
        <%--                        <img src="/admin/images/product/6.png" alt="" />--%>
        <%--                        <h2>$56</h2>--%>
        <%--                        <p>Easy Polo Black Edition</p>--%>
        <%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                    </div>--%>
        <%--                    <div class="product-overlay">--%>
        <%--                        <div class="overlay-content">--%>
        <%--                            <h2>$56</h2>--%>
        <%--                            <p>Easy Polo Black Edition</p>--%>
        <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                    <img src="/admin/images/home/new.png" class="new" alt="" />--%>
        <%--                </div>--%>
        <%--                <div class="choose">--%>
        <%--                    <ul class="nav nav-pills nav-justified">--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <div class="col-sm-4">--%>
        <%--            <div class="product-image-wrapper">--%>
        <%--                <div class="single-products">--%>
        <%--                    <div class="productinfo text-center">--%>
        <%--                        <img src="/admin/images/product/7.png" alt="" />--%>
        <%--                        <h2>$56</h2>--%>
        <%--                        <p>Easy Polo Black Edition</p>--%>
        <%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                    </div>--%>
        <%--                    <div class="product-overlay">--%>
        <%--                        <div class="overlay-content">--%>
        <%--                            <h2>$56</h2>--%>
        <%--                            <p>Easy Polo Black Edition</p>--%>
        <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                    <img src="/admin/images/home/sale.png" class="new" alt="" />--%>
        <%--                </div>--%>
        <%--                <div class="choose">--%>
        <%--                    <ul class="nav nav-pills nav-justified">--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--        <div class="col-sm-4">--%>
        <%--            <div class="product-image-wrapper">--%>
        <%--                <div class="single-products">--%>
        <%--                    <div class="productinfo text-center">--%>
        <%--                        <img src="/admin/images/product/8.png" alt="" />--%>
        <%--                        <h2>$56</h2>--%>
        <%--                        <p>Easy Polo Black Edition</p>--%>
        <%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                    </div>--%>
        <%--                    <div class="product-overlay">--%>
        <%--                        <div class="overlay-content">--%>
        <%--                            <h2>$56</h2>--%>
        <%--                            <p>Easy Polo Black Edition</p>--%>
        <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
        <%--                        </div>--%>
        <%--                    </div>--%>
        <%--                </div>--%>
        <%--                <div class="choose">--%>
        <%--                    <ul class="nav nav-pills nav-justified">--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>--%>
        <%--                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>

    </div><!--features_items-->

    <div class="category-tab"><!--category-tab-->
        <div class="col-sm-12">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#mac" data-toggle="tab">MacBook</a></li>
                <li><a href="#asus" data-toggle="tab">Asus</a></li>
                <li><a href="#acer" data-toggle="tab">Acer</a></li>
                <li><a href="#dell" data-toggle="tab">Laptop Dell</a></li>
                <li><a href="#hp" data-toggle="tab">Laptop Hp</a></li>
                <li><a href="#lenovo" data-toggle="tab">Lenovo</a></li>
                <li><a href="#msi" data-toggle="tab">Msi</a></li>
            </ul>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade active in" id="mac">
                <c:forEach var="p" items="${mac}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}"
                                       class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

            <div class="tab-pane fade active in" id="asus">
                <c:forEach var="p" items="${asus}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

            <div class="tab-pane fade active in" id="acer">
                <c:forEach var="p" items="${acer}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

            <div class="tab-pane fade active in" id="dell">
                <c:forEach var="p" items="${dell}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

            <div class="tab-pane fade active in" id="hp">
                <c:forEach var="p" items="${hp}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
            <div class="tab-pane fade active in" id="lenovo">
                <c:forEach var="p" items="${lenovo}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
            <div class="tab-pane fade active in" id="msi">
                <c:forEach var="p" items="${msi}">
                    <div class="col-sm-3">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" alt=""/>
                                    <p>${p.name}</p>
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <div class="text-center" data-id="${p.productId}">
                                        <button class="btn btn-sm btn-danger btn-add-cart">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </button>
                                        <button class="btn btn-sm btn-warning btn-star">
                                            <i class="	glyphicon glyphicon-star"></i>
                                        </button>
                                        <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                                data-target="#myModal">
                                            <i class="glyphicon glyphicon-envelope"></i>
                                        </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
    </div><!--/category-tab-->

    <div class="recommended_items"><!--recommended_items-->
        <h2 class="title text-center"> <s:message code="layout.body.recomend"/> </h2>

        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="item active">
                    <c:forEach var="p" items="${listvv}">
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                            <%--                                   <a href="/product/detail/57.png">--%>
                                        <img src="/admin/images/product/${p.image}" alt=""/>
                                                <p>${p.name}</p>
                                        </a>
                                        <h2><f:formatNumber value="${p.price}" pattern="#,###"/>đ</h2>
                                        <a href="/product/detail/${p.productId}"
                                           class="btn btn-default add-to-cart"><i></i>Detail</a>
                                        <a href="#" class="btn btn-default add-to-cart"><i
                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <%--                <div class="item">--%>
                <%--                    <div class="col-sm-4">--%>
                <%--                        <div class="product-image-wrapper">--%>
                <%--                            <div class="single-products">--%>
                <%--                                <div class="productinfo text-center">--%>
                <%--                                    <a href="/product/detail/60.png">--%>
                <%--                                        <img src="/admin/images/product/60.png" alt="" />--%>
                <%--                                    </a>--%>
                <%--                                    <h2>$56</h2>--%>
                <%--                                    <p>Easy Polo Black Edition</p>--%>
                <%--                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
                <%--                                </div>--%>

                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                    <div class="col-sm-4">--%>
                <%--                        <div class="product-image-wrapper">--%>
                <%--                            <div class="single-products">--%>
                <%--                                <div class="productinfo text-center">--%>
                <%--                                    <a href="/product/detail/61.png">--%>
                <%--                                        <img src="/admin/images/product/61.png" alt="" />--%>
                <%--                                    </a>--%>
                <%--                                    <h2>$56</h2>--%>
                <%--                                    <p>Easy Polo Black Edition</p>--%>
                <%--                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
                <%--                                </div>--%>

                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                    <div class="col-sm-4">--%>
                <%--                        <div class="product-image-wrapper">--%>
                <%--                            <div class="single-products">--%>
                <%--                                <div class="productinfo text-center">--%>
                <%--                                    <a href="/product/detail/62.png">--%>
                <%--                                        <img src="/admin/images/product/62.png" alt="" />--%>
                <%--                                    </a>--%>
                <%--                                    <h2>$56</h2>--%>
                <%--                                    <p>Easy Polo Black Edition</p>--%>
                <%--                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
                <%--                                </div>--%>

                <%--                            </div>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
            <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>
    </div><!--/recommended_items-->



<jsp:include page="dialog.jsp"/>