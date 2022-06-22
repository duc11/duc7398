<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<c:set value="${order}" var="o"/>
<c:set value="${shipper}" var="s"/>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<ul class="nav nav-tabs col-lg-offset-3">
    <li class="active"><a data-toggle="tab" href="#tab1"> Tất Cả</a></li>
    <li><a data-toggle="tab" href="#tab2">Chờ xác nhận</a></li>
    <li><a data-toggle="tab" href="#tab3">Chờ lấy hàng</a></li>
    <li><a data-toggle="tab" href="#tab4">Đang giao</a></li>
    <li><a data-toggle="tab" href="#tab5">Đã giao</a></li>
</ul>
<div class="tab-content">
    <div id="tab1" class="tab-pane fade in active">
        <c:set var="a" value="${p}"/>
        <c:forEach var="p" items="${order_details}">
            <tr>
                <td><img src="/admin/images/product/${p.product.image}" width="70" class="  col-lg-offset-3"></td>
                <td style="color: yellow;">${p.product.name}
                    <br>
                    <div class="col-lg-offset-3" style="color: #243a76">
                        Số lượng:${p.quantity}
                    </div>
                </td>
                <div class="col-lg-offset-8" style="color: red">
                    <td><font size="5px" color="red"><f:formatNumber value="${p.unitPrice-p.discount/100*p.unitPrice}"
                                                                     pattern="#,###"/>đ</font></td>
                    <td><span class="unprice"
                              style="font-size: 14px;font-weight: bold;color: #333333;margin-bottom: 15px;display: block;">Giá gốc <span
                            style="margin-left: 20px;margin-right: 10px;font-size: 12px;color: #666666;text-decoration: line-through;font-weight: 400;"><f:formatNumber
                            value="${p.unitPrice}" pattern="#,###"/>đ</span><i>-<f:formatNumber value="${p.discount}"
                                                                                                pattern="#"/>%</i></span>
                    </td>
                </div>
            </tr>
            <br>


        </c:forEach>
        <div class="col-lg-offset-3" style="color: red;font-size:100px">
            <h4>
                Tổng tiền:<f:formatNumber value="${a}" pattern="#,###"/>đ
            </h4>
        </div>
    </div>
    <div id="tab2" class="tab-pane fade">
        <c:if test="${o.orderStatus =='Chờ xác nhận'}">
            <c:set var="a" value="${p}"/>
            <c:forEach var="p" items="${order_details}">
                <tr>
                    <td><img src="/admin/images/product/${p.product.image}" width="70" class="  col-lg-offset-3">
                    </td>
                    <td style="color: yellow;">${p.product.name}
                        <br>
                        <div class="col-lg-offset-3" style="color: #243a76">
                            Số lượng:${p.quantity}
                        </div>
                    </td>
                    <div class="col-lg-offset-8" style="color: red">
                        <td><font size="5px" color="red"><f:formatNumber
                                value="${p.unitPrice-p.discount/100*p.unitPrice}" pattern="#,###"/>đ</font></td>
                        <td><span class="unprice"
                                  style="font-size: 14px;font-weight: bold;color: #333333;margin-bottom: 15px;display: block;">Giá gốc <span
                                style="margin-left: 20px;margin-right: 10px;font-size: 12px;color: #666666;text-decoration: line-through;font-weight: 400;"><f:formatNumber
                                value="${p.unitPrice}" pattern="#,###"/>đ</span><i>-<f:formatNumber
                                value="${p.discount}" pattern="#"/>%</i></span>
                        </td>
                    </div>
                </tr>
                <br>
            </c:forEach>
            <div class="col-lg-offset-3" style="color: red;font-size:100px">
                <div class="col-sm-3">
                <h4>
                    Tổng tiền:<f:formatNumber value="${a}" pattern="#,###"/>đ
                </h4>
                </div>
                <div class="row col-lg-offset-1">
                    <div class="col-sm-3">
                        <a href="https://www.facebook.com/messages/t/100030680343840" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:blueviolet;color: white;border-radius: 3px;font-size: 15px;font-weight: bold;">Liên hệ với người bán </a>

                    </div>
                    <div class="col-sm-3">
                        <a href="/order/huy/${o.orderId}" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:red;color: #fff;border-radius: 3px;font-size: 15px;font-weight: bold;">Hủy đơn hàng </a>
                    </div>
                </div>

            </div>

        </c:if>
        <c:if test="${o.orderStatus =='Chờ lấy hàng'|| o.orderStatus =='Đang giao'|| o.orderStatus =='Đã giao'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
    </div>
    <div id="tab3" class="tab-pane fade">
        <c:if test="${o.orderStatus =='Chờ lấy hàng'}">
            <c:set var="a" value="${p}"/>
            <c:set var="m" value="${order}"/>
            <c:forEach var="p" items="${order_details}">
                <tr>
                    <td><img src="/admin/images/product/${p.product.image}" width="70" class="  col-lg-offset-3">
                    </td>
                    <td style="color: yellow;">${p.product.name}
                        <br>
                        <div class="col-lg-offset-3" style="color: #243a76">
                            Số lượng:${p.quantity}
                        </div>
                    </td>
                    <div class="col-lg-offset-8" style="color: red">
                        <td><font size="5px" color="red"><f:formatNumber
                                value="${p.unitPrice-p.discount/100*p.unitPrice}" pattern="#,###"/>đ</font></td>
                        <td><span class="unprice"
                                  style="font-size: 14px;font-weight: bold;color: #333333;margin-bottom: 15px;display: block;">Giá gốc <span
                                style="margin-left: 20px;margin-right: 10px;font-size: 12px;color: #666666;text-decoration: line-through;font-weight: 400;"><f:formatNumber
                                value="${p.unitPrice}" pattern="#,###"/>đ</span><i>-<f:formatNumber
                                value="${p.discount}" pattern="#"/>%</i></span>
                        </td>
                    </div>
                </tr>
                <br>
            </c:forEach>
            <div class="col-lg-offset-3" style="color: red;font-size:100px">
                <div class="col-sm-3">
                    <h4>
                        Tổng tiền:<f:formatNumber value="${a}" pattern="#,###"/>đ
                    </h4>
                </div>
                <div class="row col-lg-offset-1">
                    <div class="col-sm-3">
                        <a href="https://www.facebook.com/messages/t/100030680343840" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:blueviolet;color: white;border-radius: 3px;font-size: 15px;font-weight: bold;">Liên hệ với người bán </a>

                    </div>
                    <div class="col-sm-3">
                        <a href="/cart/Add/${list.productId}" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:red;color: #fff;border-radius: 3px;font-size: 15px;font-weight: bold;">Hủy đơn hàng </a>
                    </div>
                </div>

            </div>
            <div>
                <h2>Đơn hàng sẽ chuẩn bị và chuyển đi trước ${m.deliveryDate}</h2>
            </div>
        </c:if>
        <c:if test="${ o.orderStatus =='Đang giao'|| o.orderStatus =='Đã giao'|| o.orderStatus =='Chờ xác nhận'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
    </div>

    <div id="tab4" class="tab-pane fade  ">
        <c:if test="${o.orderStatus =='Đang giao'}">
        <div class="thankyou__box-top text-center">
            <h2>Đơn hàng của ${o.customer.fullName} đang được giao</h2>
            <h2>người vận chuyển :${s.name}</h2>
            <h2>khu vực:${s.khuVuc}</h2>
            <h2>Sdt:${s.sdt}</h2>
        </div>
        </c:if>
        <c:if test="${o.orderStatus =='Chờ lấy hàng'|| o.orderStatus =='Đã giao'|| o.orderStatus =='Chờ xác nhận'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
    </div>
    <div id="tab5" class="tab-pane fade  ">
        <c:if test="${o.orderStatus =='Đã giao'}">
            <c:set var="a" value="${p}"/>
            <c:set var="m" value="${order}"/>
            <c:forEach var="p" items="${order_details}">
                <tr>
                    <td><img src="/admin/images/product/${p.product.image}" width="70" class="  col-lg-offset-3">
                    </td>
                    <td style="color: yellow;">${p.product.name}
                        <br>
                        <div class="col-lg-offset-3" style="color: #243a76">
                            Số lượng:${p.quantity}
                        </div>
                    </td>
                    <div class="col-lg-offset-8" style="color: red">
                        <td><font size="5px" color="red"><f:formatNumber
                                value="${p.unitPrice-p.discount/100*p.unitPrice}" pattern="#,###"/>đ</font></td>
                        <td><span class="unprice"
                                  style="font-size: 14px;font-weight: bold;color: #333333;margin-bottom: 15px;display: block;">Giá gốc <span
                                style="margin-left: 20px;margin-right: 10px;font-size: 12px;color: #666666;text-decoration: line-through;font-weight: 400;"><f:formatNumber
                                value="${p.unitPrice}" pattern="#,###"/>đ</span><i>-<f:formatNumber
                                value="${p.discount}" pattern="#"/>%</i></span>
                        </td>
                    </div>
                </tr>
                <br>


            </c:forEach>
            <div class="col-lg-offset-3" style="color: red;font-size:100px">
                <div class="col-sm-3">
                    <h4>
                        Tổng tiền:<f:formatNumber value="${a}" pattern="#,###"/>đ
                    </h4>
                </div>
                <div class="row col-lg-offset-1">
                    <div class="col-sm-3">
                        <a href="https://www.facebook.com/messages/t/100030680343840" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:blueviolet;color: white;border-radius: 3px;font-size: 15px;font-weight: bold;">Liên hệ với người bán </a>

                    </div>
                    <div class="col-sm-3">
                        <a href="/cart/Add/${list.productId}" target="_blank" style="width: 100%;display: flex;justify-content: center;line-height: 50px;margin-bottom: 10px;background:red;color: #fff;border-radius: 3px;font-size: 15px;font-weight: bold;">Hủy đơn hàng </a>
                    </div>
                </div>

            </div>
        </c:if>
        <c:if test="${o.orderStatus =='Chờ lấy hàng'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
        <c:if test="${o.orderStatus =='Chờ xác nhận'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
        <c:if test="${o.orderStatus =='Đang giao'}">
            <h4 style="font-size: largel;color: #3c763d" class="col-lg-offset-3">
                Chưa có đơn hàng
            </h4>
        </c:if>
    </div>
</div>
<jsp:include page="footer.jsp"/>