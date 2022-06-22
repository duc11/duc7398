<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="row">
    <div class="col-sm-5">
        <h1 class="bg-white border-bottom mb-0 p-3 text-18 title w-100">${list.name}</h1>
        <a data-fancybox="gallery"><img src="/admin/images/product/${list.image}" width="100%"></a>

    </div>
    <div class="col-sm-7" style="color: black;">
        <h4 style="color: blue">Same Product</h4>
        <div>
            <c:forEach var="p" items="${list1}">
                <div class="col-sm-5">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="/admin/images/product/${p.image}"width="100%" >
                                <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
                                <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <%--                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>--%>
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


    </div>
</div>

<font size="5px" color="red"><f:formatNumber value="${list.price-list.discount/100*list.price}" pattern="#,###" />đ</font>
<span class="unprice" style="font-size: 14px;font-weight: bold;color: #333333;margin-bottom: 15px;display: block;">Giá gốc <span style="margin-left: 20px;margin-right: 10px;font-size: 12px;color: #666666;text-decoration: line-through;font-weight: 400;"><f:formatNumber value="${list.price}" pattern="#,###" />đ</span><i>-<f:formatNumber value="${list.discount}" pattern="#"/>%</i></span>
<span class="pro-warranty d-block mb-2"><strong></strong> <p>✅Bảo hành 12 tháng ducShoper</p> (sản phẩm Flash Sale không áp dụng chính sách đổi trả)

<p class="p1">✅ MIỄN PHÍ GIAO HÀNG TẬN NHÀ</p>
<p class="p1">- Với đơn hàng &lt; 4.000.000 đồng: Miễn phí giao hàng cho đơn hàng &lt; 5km tính từ cửa hàng  gần nhất</p>
<p class="p1">- Với đơn hàng &gt; 4.000.000 đồng: Miễn phí giao hàng (khách hàng chịu phí bảo hiểm hàng hóa nếu có)</p></span>
<p>✅Các sản phẩm bán GIÁ SHOCK, các quà tặng đánh dấu (*) sẽ không áp dụng khi thanh toán qua các loại thẻ: VISA / MASTER / JCB / Amex.</p>
<p class="hotline">Hotline tư vấn: <a href="tel:2471069999">024.7106.9999</a></p>
<a href="https://www.facebook.com/longhoanghapro98/" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background: #0084cb;color: #fff;border-radius: 3px;font-size: 25px;font-weight: bold;">Chat với nhân viên tư vấn</a>
<div class="row">
    <div class="col-sm-6">
        <a href="https://www.facebook.com/longhoanghapro98/" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:#dad55e;color: #fff;border-radius: 3px;font-size: 25px;font-weight: bold;">Mua trả góp </a>

    </div>
    <div class="col-sm-6">
        <a href="/cart/Add/${list.productId}" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:#dad55e;color: #fff;border-radius: 3px;font-size: 25px;font-weight: bold;">Mua tại cửa hàng </a>
    </div>
    <div>
        <li>Description: ${list.description}</li>
    </div>
</div>
<ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#tab1"> Product Favories</a></li>
    <li><a data-toggle="tab" href="#tab2">Items Viewed</a></li>
</ul>

<div class="tab-content">
<div id="tab1" class="tab-pane fade in active">
    <c:forEach var="p" items="${list2}">
        <div class="col-sm-3">
            <div class="product-image-wrapper">
                <div class="single-products">
                    <div class="productinfo text-center">
                        <img src="/admin/images/product/${p.image}" >
                        <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
                        <p>Easy Polo Black Edition</p>
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

        <div id="tab2" class="tab-pane fade  ">
            <div>
                <c:forEach var="p" items="${list3}">
                    <div class="col-sm-2">
                        <div class="product-image-wrapper">
                            <div class="single-products">
                                <div class="productinfo text-center">
                                    <img src="/admin/images/product/${p.image}" >
                                    <h2><f:formatNumber value="${p.price}" pattern="#,###" />đ</h2>
                                    <a href="/product/detail/${p.productId}" class="btn btn-default add-to-cart"><i></i>Detail</a>
                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
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
                                    <button class="btn btn-sm btn-success btn-open" data-toggle="modal"
                                            data-target="#myModal">
                                        <i class="glyphicon glyphicon-envelope"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
</div>
<jsp:include page="dialog.jsp"/>

