<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="col-sm-12">

    <p>


        <meta charset="utf-8">

        <style type="text/css">
            div.container {
                width: 100%;
                margin: auto;
            }
            /* định dạng thẻ div chưa các button tab */
            div.tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            /* định dạng các button tab */
            div.tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 12px 14px;
                transition: 0.3s;
                font-size: 15px;
            }

            /* đổi màu khi một button tab được hover */
            div.tab button:hover {
                background-color: #ddd;
            }

            /* đổi màu nền cho tab đang được hiển thị nội dung */
            div.tab button.active {
                background-color: #ccc;
            }

            /* định dạng nội dung hiển thị */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
            }
        </style>

    </p><div class="container">
    <div class="tab">
        <button class="tablinks">Mail</button>
        <button class="tablinks">Meet</button>
        <button class="tablinks">Calendar</button>
        <button class="tablinks">Drive</button>
        <button class="tablinks">Docs</button>
        <button class="tablinks">Sheets</button>
        <button class="tablinks">Forms</button>
        <button class="tablinks">Slides</button>
        <button class="tablinks">Sites</button>
        <button class="tablinks">Admin</button>
        <button class="tablinks">Vault</button>
        <button class="tablinks active">Mobile Management</button>
    </div>

    <div id="Mail" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/gmail_product_icon_24dp_2x_6ce2c4b529b74ad49831575f7d166d37.png"></h3>
        <p>
            Email doanh nghiệp @yourcompany.com <br>
            Email chuyên nghiệp, không có quảng cáo với 30 GB bộ nhớ hộp thư đến và hỗ trợ 24/7. Tương thích với Microsoft Outlook và các ứng dụng email khác.
        </p>
    </div>

    <div id="Meet" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/meet_product_icon_24dp_2x_abe2597adaca414f9072777bd94150d5.png"></h3>
        <p>
            Họp trực tiếp với mọi người, ở mọi nơi <br>
            Kết nối qua trò chuyện bằng văn bản, cuộc gọi thoại hoặc cuộc gọi điện video HD với tính năng chia sẻ màn hình tích hợp. Tiết kiệm tiền và thời gian đi lại nhưng vẫn nhận được tất cả những lợi ích của việc liên hệ trực tiếp.
        </p>
    </div>

    <div id="Calendar" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/calendar_product_icon_24dp_2x_e9842963a96c4b82b1f1c8b38d7c623d.png"></h3>
        <p>
            Dễ dàng lập kế hoạch cho các nhóm <br>
            Dành ít thời gian hơn cho việc lập kế hoạch và nhiều thời gian hơn cho việc thực hiện với lịch có thể chia sẻ được tích hợp liên tục với Gmail, Drive và Hangouts để bạn luôn biết những gì sẽ diễn ra tiếp theo.
        </p>
    </div>

    <div id="Drive" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/drive_product_icon_24px_2_9c9837cb50e34f3d803f30c478ec1c96.png"></h3>
        <p>
            Bộ nhớ trực tuyến an toàn <br>
            Lưu giữ tất cả tệp của bạn ở một nơi và luôn có được phiên bản cập nhật nhất dù bạn ở bất cứ đâu. Tự động đồng bộ hóa tệp từ máy tính để bàn của bạn và có quyền truy cập trên các thiết bị của bạn.
        </p>
    </div>

    <div id="Docs" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/docs_product_icon_24dp_2x_04d17794bcaf4475977352367e3e0852.png"></h3>
        <p>
            Xử lý văn bản cho nhóm <br>
            Tạo và chỉnh sửa tài liệu văn bản từ bất kỳ thiết bị thông minh nào. Nhiều người có thể làm việc cùng một lúc trên cùng tài liệu và các thay đổi sẽ được lưu tự động.
        </p>
    </div>

    <div id="Sheets" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/sheets_product_icon_24dp_2x_a56b7a3e65844d29be1f11431217fd53.png"></h3>
        <p>
            Trang tính mạnh mẽ <br>
            Tạo và chỉnh sửa bảng tính từ bất kỳ thiết bị thông minh nào. Xử lý mọi thứ từ danh sách công việc đơn giản cho đến phân tích dữ liệu với biểu đồ, bộ lọc và bảng tổng hợp.
        </p>
    </div>

    <div id="Forms" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/forms_product_icon_24dp_2x_a57dd78848784b5eaa973b39fc756289.png"></h3>
        <p>
            Khảo sát dễ dàng và biểu mẫu <br>
            Tạo biểu mẫu tùy chỉnh cho khảo sát và bảng câu hỏi trực tuyến. Thu thập câu trả lời vào bảng tính và phân tích dữ liệu ngay trong Google Trang tính.
        </p>
    </div>

    <div id="Slides" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/slides_product_icon_24dp_2x_aa511937d5f44958b11c8c78de6b4320.png"></h3>
        <p>
            Cùng nhau tạo các bản trình bày đẹp <br>
            Tạo, chỉnh sửa và trình bày các bản trình bày đẹp từ bất kỳ thiết bị thông minh nào. Nhiều người có thể làm việc cùng một lúc trên màn hình và mọi người luôn có được phiên bản mới nhất.
        </p>
    </div>

    <div id="Sites" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/sites_product_icon_24dp_2x_e13cfd97c7af421ba08c38a0ee553b0f.png"></h3>
        <p>
            Trang web dễ tạo <br>
            Khởi chạy trang đích thân thiện với thiết bị di động cho nhóm hoặc dự án của bạn hay một cổng cho khách hàng bằng các công cụ kéo và thả đơn giản.
        </p>
    </div>

    <div id="Admin" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/admin_product_icon_24dp_2x_f9988fdfdfaa4c29ad2fe28c93606fc9.png"></h3>
        <p>
            Quản lý G Suite cho tổ chức của bạn<br>
            Quản trị không cần sách hướng dẫn. Dễ dàng thêm người dùng, quản lý thiết bị và định cấu hình bảo mật cũng như cài đặt để dữ liệu của bạn luôn được an toàn.
        </p>
    </div>

    <div id="Vault" class="tabcontent" style="display: none;">
        <h3><img src="https://file.hstatic.net/1000254272/file/vault_b15ab8c633cb41af981a3317c4abf02d.png"></h3>
        <p>
            Lưu trữ và tuân thủ <br>
            Quản lý, giữ lại, tìm kiếm và xuất email cũng như cuộc trò chuyện có lưu nội dung trò chuyện. Vault được dành riêng cho gói 10 đô la/người dùng/tháng.
        </p>
    </div>

    <div id="Mobile Management" class="tabcontent" style="display: block;">
        <h3><img src="https://file.hstatic.net/1000254272/file/mobile_de9d46b81a1a4071a41c0c1e822a05a4.png"></h3>
        <p>Mobile Management <br>
            Làm cho nhân viên hạnh phúc và an toàn dữ liệu dễ dàng để thiết lập quản lý điện thoại di động cho Android, iOS, Windows và điện thoại thông minh khác.
        </p>
    </div>



</div>

    <script type="text/javascript">
        var buttons = document.getElementsByClassName('tablinks');
        var contents = document.getElementsByClassName('tabcontent');
        function showContent(id){
            for (var i = 0; i < contents.length; i++) {
                contents[i].style.display = 'none';
            }
            var content = document.getElementById(id);
            content.style.display = 'block';
        }
        for (var i = 0; i < buttons.length; i++) {
            buttons[i].addEventListener("click", function(){
                var id = this.textContent;
                for (var i = 0; i < buttons.length; i++) {
                    buttons[i].classList.remove("active");
                }
                this.className += " active";
                showContent(id);
            });
        }
        showContent('Mail');
    </script>
    <p></p>

</div>
<jsp:include page="footer.jsp"/>