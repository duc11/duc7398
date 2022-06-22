    <%@page pageEncoding="UTF-8" %>
        <%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <header class="header" id="myHeader" ><!--header-->
        <div class="header_top" ><!--header_top-->
        <div class="container">
        <div class="row">
        <div class="col-sm-6">
        <div class="contactinfo">
        <ul class="nav nav-pills">
        <li><a href="#"><i class="fa fa-phone"></i> 0984733180</a></li>
        <li><a href="#"><i class="fa fa-envelope"></i> duc@gmail.com</li>
        </ul>
        </div>
        </div>
        <div class="col-sm-6">
        <div class="social-icons pull-right">
        <ul class="nav navbar-nav">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
        </ul>
        </div>
        </div>
        </div>
        </div>
        </div><!--/header_top-->

        <div class="container">
        <div class="row">
        <div class="col-sm-4">
        <div class="logo pull-left">
        <a href="${pageContext.request.contextPath}/home"><img src="/admin/images/home/logo.png"width="100%" alt="" /></a>
        </div>
        <div class="btn-group pull-right">
        <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
        language
        <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
        <li><a href="" data-lang="vi">Việt Nam</a></li>
        <li><a href="" data-lang="en">English</a></li>
        </ul>
        </div>

        </div>
        </div>
        <div class="col-sm-8">
        <div class="header-bottom"><!--header-bottom-->
        <div class="container">
        <div class="row">
        <div class="col-sm-9">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        </div>
        <div >
        <ul class="nav navbar-nav collapse navbar-collapse">
        <li><a href="${pageContext.request.contextPath}/home" class="active">
        <s:message code="layout.header.home"/></a></li>
        <li class="dropdown"><a href="#">Admin Page<i class="fa fa-angle-down"></i></a>
        <ul role="menu" class="sub-menu">
        <li><a href="/category/index">Category</a></li>
        <li><a href="/customer/index">Customer </a></li>
        <li><a href="/product/index">Product</a></li>
        <li><a href="/order/index">Order</a></li>
        </ul>

        </li>
        <li class="dropdown"><a href="#">Statistical<i class="fa fa-angle-down"></i></a>
        <ul role="menu" class="sub-menu">
        <li><a href="/inventory/index">Inventory</a></li>
        <li><a href="/inventory/revenueCategory">revenueCategory </a></li>
        <li><a href="/inventory/revenueCustomer">revenueCustomer</a></li>
        <li><a href="/inventory/revenueByYear">revenueByYear</a></li>
        <li><a href="/inventory/revenueByMonth">revenueByMonth</a></li>
        </ul>

        </li>

        </li>
        </ul>
        </div>
        </div>

        </div>
        </div>
        </div>

        </div>
        </div>
        </div>


      <!--/header-bottom-->

        </header><!--/header-->
