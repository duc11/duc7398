<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="login-form">
            <form:form action="${b}/index" modelAttribute="entity">
                <div style="color: black"><h1>Order Form</h1></div>
                <h4>${message}</h4>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>Id</label>
                        <form:input class="form-control" path="orderId" readonly="true" placeholder="auto number"/>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>OrderDate</label>
                        <form:input class="form-control" path="orderDate"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>DeliveryDate</label>
                        <form:input class="form-control" path="deliveryDate"/>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>ReceiveDate</label>
                        <form:input class="form-control" path="receiveDate"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>Customer</label>
                        <form:input class="form-control" path="customer.customerId"/>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>Amount</label>
                        <form:input class="form-control" path="amount"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>Adress</label>
                        <form:input class="form-control" path="address"/>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>SDT</label>
                        <form:input class="form-control" path="sdt"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label>Note</label>
                        <form:textarea class="form-control" rows="3" path="status"/>
                    </div>
                    <div class="form-group col-sm-6">
                        <label>Shipper</label>
                        <form:select path="shipper.shipperId" class="form-control">
                            <form:options items="${shipper}" itemLabel="name" itemValue="shipperId"/>
                        </form:select>
                    </div>
                </div>
                <div class="row">
                <div class="form-group col-sm-6 ">
                    <label>orderStatus</label>
                    <form:select path="orderStatus" class="form-control">
                    <form:option value="Chờ xác nhận">Chờ xác nhận</form:option>
                    <form:option value="Chờ lấy hàng">Chờ lấy hàng</form:option>
                    <form:option value="Đang giao">Đang giao</form:option>
                    <form:option value="Đã giao">Đã giao</form:option>
                    </form:select>
                </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-default warning"
                            formaction="${b}/update" ${!empty entity.orderId?'':'disabled'} >Update
                    </button>
                    <a href="${b}/index" class="btn btn-default">Reset</a>
                </div>
            </form:form>
            <c:if test="${!empty list1}">
                <jsp:include page="detail.jsp"/>
            </c:if>
        </div>
    </div>

</div>

