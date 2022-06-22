<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set var="b" value="/order" scope="request"/>
<c:set var="a" value="${entity}" />

<h2 style="color: red;">Order Manager </h2>
<h4 class="label label-success">${message}${param.message}</h4>
<jsp:include page="form.jsp"/>
<jsp:include page="table.jsp"/>





