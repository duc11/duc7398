<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | DUC-Shopper</title>
    <tiles:insertAttribute name="head"/>
</head><!--/head-->

<body>
<tiles:insertAttribute name="header"/>
<%--<tiles:insertAttribute name="sildes"/>--%>



<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <tiles:insertAttribute name="aside"/>
            </div>
            <div class="col-sm-9">
                <div class="container">
                </div>
                <tiles:insertAttribute name="body"/>
            </div>

        </div>

    </div>
</section>


<tiles:insertAttribute name="footer"/>



<script src="<c:url value="/admin/js/jquery.js"/>"></script>
<script src="<c:url value="/admin/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/admin/js/jquery.scrollUp.min.js"/>"></script>
<script src="<c:url value="/admin/js/price-range.js"/>"></script>
<script src="<c:url value="/admin/js/jquery.prettyPhoto.js"/>"></script>
<script src="<c:url value="/admin/js/main.js"/>"></script>
<%--<script src="https://code.jquery.com/jquery-2.2.4.js"></script>--%>
<%--<script>--%>
<%--    $(document).ready(function () {--%>
<%--        $(window).scroll(function () {--%>
<%--            if ($(this).scrollTop) {--%>
<%--                $('cart').addClass('sticky');--%>
<%--            }else {--%>
<%--                $('cart').remove('sticky');--%>
<%--            }--%>

<%--        })--%>

<%--    })--%>
<%--</script>--%>
</body>
</html>