<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="b" value=" " scope="request"/>
<c:set var="a" value="${entity}" />

<h2 style="color: red;">Account Manager </h2>
<h4 class="label label-success">${message}${param.message}</h4>

<c:choose>
    <c:when test="${!c.is}">
        <ul class="nav nav-tabs">
            <li ><a data-toggle="tab" href="#tab1">List</a></li>
            <li class="active"><a data-toggle="tab" href="#tab2">Edit</a></li>

        </ul>
        <div class="tab-content">
            <div id="tab1" class="tab-pane fade ">
                <jsp:include page="table.jsp"/>
            </div>
            <div id="tab2" class="tab-pane fade in active">
                <jsp:include page="form.jsp"/>
            </div>

        </div>

    </c:when>
    <c:otherwise>
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#tab1">List</a></li>
            <li><a data-toggle="tab" href="#tab2">Edit</a></li>

        </ul>
        <div class="tab-content">
            <div id="tab1" class="tab-pane fade in active">
                <jsp:include page="table.jsp"/>
            </div>
            <div id="tab2" class="tab-pane fade">
                <jsp:include page="form.jsp"/>
            </div>

        </div>
    </c:otherwise>
</c:choose>

