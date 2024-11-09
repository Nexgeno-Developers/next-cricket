<div id="content-container" class="container">
    <div id="page-title">
        <h1 class="page-header text-overflow">Manage Players</h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="panel-body">
                <div class="tab-pane fade active in" id="list" style="border:1px solid #ebebeb; border-radius:4px;">
                </div>
            </div>
        </div>
    </div>
</div>

<script>
var base_url = '<?php echo base_url(); ?>'
var user_type = 'admin';
var module = 'players';
var list_cont_func = 'list';
var dlt_cont_func = 'delete';

function delete_players(id, table, msg) {
    $.ajax({
        type: 'POST',
        url: '<?php echo base_url(); ?>index.php/' + user_type + '/' + module,
        data: {
            <?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>',
            id: id,
            table: table
        },
        async: false,
        success: function(data) {
            if (data != 0) {
                msg = '<div class="modal-title">Are you sure want to delete this?</div>';
            } else {
                msg = '<div class="modal-title">' + msg + '</div>';
            }
        }
    });
    bootbox.confirm(msg, function(result) {
        if (result) {
            $.post('<?php echo base_url(); ?>index.php/' + user_type + '/' + module + '/delete', {
                    <?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>',
                    id: id,
                    table: table
                },
                function(data, status) {
                    $.activeitNoty({
                        type: 'success',
                        icon: 'fa fa-check',
                        message: dss,
                        container: 'floating',
                        timer: 2000
                    });
                    location.reload();
                });
        } else {
            $.activeitNoty({
                type: 'danger',
                icon: 'fa fa-minus',
                message: cncle,
                container: 'floating',
                timer: 3000
            });
        }
    });
}
</script>