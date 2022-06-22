

<%@page pageEncoding="UTF-8" %>
<!-- Trigger the modal with a button -->


<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send to Friend</h4>
            </div>
            <div class="modal-body">
               <div class="form-group">
                   <label>Email người nhận</label>
                   <input id="email" class="form-control">

               </div>
                <div class="form-group">
                    <label>Email gửi</label>
                    <input id="sender" class="form-control">

                </div>
                <div class="form-group">
                    <label>Nội dung</label>
                    <textarea id="conment" class="form-control" rows="3"></textarea>
                </div>
                <input id="id" type="hidden">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-send" >Send</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">close</button>
            </div>
        </div>

    </div>
</div>