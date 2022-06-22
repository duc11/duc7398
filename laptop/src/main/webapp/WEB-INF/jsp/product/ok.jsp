
<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div class=""><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div >
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li class="dropdown"><a href="#">Sắp xếp theo<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <a href="/product?cat=${cat}&sort=1"class="list-group-item">Mới nhất</a>
                                            <a href="/product?cat=${cat}&sort=2"class="list-group-item">Giá tăng dần </a>
                                            <a href="/product?cat=${cat}&sort=3"class="list-group-item">Giá giảm dần</a>
                                            <a href="/product?cat=${cat}&sort=4"class="list-group-item">Lượt xem</a>
                                            <a href="/product?cat=${cat}&sort=5"class="list-group-item">Yêu thích</a>
                                            <a href="/product?cat=${cat}&sort=6"class="list-group-item">Tên A-Z</a>
                                        </ul>

                                    </li>

                                </ul>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>