

<%@page pageEncoding="UTF-8" %>
<!-- Trigger the modal with a button -->


<div class="modal fade" id="conformationId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Conformation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Do you want to delete <span id="id"></span>?
            </div>
            <div class="modal-footer">
                <a id="yesOption" type="button" class="btn btn-danger">Delete</a>
                <button type="button" class="btn btn-secondary"
                        data-dismiss="modal">No</button>

            </div>
        </div>
    </div>
</div>