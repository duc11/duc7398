<%@page pageEncoding="UTF-8" %>
<jsp:include page="head.jsp"/>
<jsp:include page="header.jsp"/>
<div class="warranty-container" style="background: #fff;padding: 30px !important;box-shadow: 0px 0px 1px 0 rgba(0,0,0,.25);">
    <img class="hnc-bh-image" src="https://www.hanoicomputer.vn/media/lib/15-12-2020/banner-khiu-ni.png" width="100%">
    <div style="text-align:center;margin-bottom: 20px">
        <h1 style="font-size: 24px;text-transform: uppercase;">Thắc mắc, góp ý với DUCSHOP</h1>
        <div style="width:400px;border-top:solid 1px #ddd; margin:10px auto;"></div>
    </div>
    <div style="">

        <div class="clear"></div>



        <style type="text/css">
            .require { font-weight:bold; color:#F00}
        </style>
        <p style="text-align: center">Mọi thắc mắc hoặc góp ý, quý khách vui lòng liên hệ trực tiếp với bộ phận chăm sóc khách hàng của chúng tôi bằng cách điền đầy đủ thông tin vào form bên dưới. <b>Ý kiến đánh giá của Khách hàng RẤT QUAN TRỌNG với DUCSHOP.</b></p>
        <form method="post" enctype="multipart/form-data" action="/introduce/submit" id="hnc_contact">

            <input type="hidden" value="customer" name="action">
            <input type="hidden" value="contact" name="action_type">
            <input type="hidden" value="contact" name="type">


            <fieldset>
                <input type="text" size="50" name="name" id="contact_name-2" placeholder="Họ và tên (bắt buộc)" class="khaipv-input">
            </fieldset>
            <fieldset>
                <input type="text" size="50" name="email" id="contact_email-2" placeholder="Email (bắt buộc)" class="khaipv-input">
            </fieldset>
            <fieldset>
                <input type="text" size="50" name="tel" placeholder="Số điện thoại" class="khaipv-input">
            </fieldset>
            <fieldset>
                <textarea rows="8" name="body" id="contact_message-2" placeholder="Nội dung thắc mắc, góp ý của quý khách" style="width:329px;" class="khaipv-textarea"></textarea>
            </fieldset>
            <fieldset>

                <div class="g-recaptcha" data-sitekey=""></div>


            </fieldset>
            <fieldset>
                <button class="submit-button" onclick="return _check_contact_form();" style="cursor:pointer;">Gửi</button>
            </fieldset>

        </form>


        <script type="text/javascript">
            function _check_contact_form(){
                var error = "";
                var check_name = document.getElementById('contact_name-2').value;
                var check_email = document.getElementById('contact_email-2').value;
                var check_message = document.getElementById('contact_message-2').value;
                var check_captcha = document.getElementById('g-recaptcha-response').value;

                if(check_name.length < 4) error += "- Bạn chưa nhập tên \n";
                if(check_email.length < 4) error += "- Bạn chưa nhập email\n";
                if(check_message.length < 4) error += "- Bạn chưa nhập nội dung\n";
                if(check_captcha.length < 4) error += "- Bạn chưa nhập Mã bảo vệ\n";

                if(error == "") return true;
                else alert(error);
                return false;
            }


            function change_captcha(holder){
                var unixtime_ms = new Date().getTime();
                $("#"+holder).attr("src","/includes/captcha/captcha.php?v="+unixtime_ms);
            }

        </script>
    </div><!--float:left-->

</div>
<jsp:include page="footer.jsp"/>