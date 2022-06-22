<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:forEach var="p" items="${list2}">
    <div class="col-sm-3">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="/admin/images/product/${p.image}" >
                    <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
                    <p>${p.name}</p>
                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                </div>
                <div class="product-overlay">
                    <div class="overlay-content">
                        <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
                        <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
<%--                        <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
                    </div>
                </div>
            </div>
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
</c:forEach>
</div>