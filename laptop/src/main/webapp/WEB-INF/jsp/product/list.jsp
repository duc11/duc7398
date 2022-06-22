<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>




    <!--/header-bottom-->



<jsp:include page="ok.jsp"/>
<c:forEach var="p" items="${list}">
    <div class="col-sm-3">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <div class="product_image">
                    <img src="/admin/images/product/${p.image}"width="100%" >
                    </div>
                    <p>${p.name}</p>
                    <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
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

<jsp:include page="dialog.jsp"/>
<%--</div>--%>
<%--<div class="text-center">--%>
<%--    <nav aria-label="Page navigation example <c:if test="${list.totalPages>0}"></c:if>">--%>
<%--        <ul class="pagination">--%>
<%--            <li class="page-item <c:if test="${1==list.number+1}">active</c:if>">--%>
<%--                <a class="page-link " href="/product/list?size=${list.size}&page=${1}">first</a></li>--%>
<%--            <c:forEach begin="1" step="1" end="${list.totalPages-1}" var="p">--%>
<%--                <li class="page-item  <c:if test="${p==list.number+1}">active</c:if>">--%>
<%--                    <a class="page-link " href="/product/list?size=${list.size}&page=${p}">${p}</a></li>--%>
<%--            </c:forEach>--%>
<%--            <li class="page-item <c:if test="${list.totalPages==list.number+1}">active</c:if>">--%>
<%--                <a class="page-link " href="/product/search?size=${products.size}&page=${list.totalPages}">last</a></li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
<%--</div>--%>