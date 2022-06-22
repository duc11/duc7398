<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<c:set var="a" value="${user}"/>
<h2>FORGOT</h2>
<h4> Xác nhân mật khẩu ${a.password} thành công </h4>
<jsp:include page="footer.jsp"/>