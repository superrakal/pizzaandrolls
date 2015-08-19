jQuery(document).ready(function ($) {
    $('#callback_button').click(function () {
        var name = $('#callback_name');
        var number = $('#phone');
        if ($('#callback_name').val().length && $('#phone').val().length) {
            var data = 'name=' + name.val() + '&number=' + number.val();
            $.ajax({
                url: "/callback/new_callback?"+data,
                //GET method is used
                type: "POST",
                success: function () {
                    $("#callback-modal").modal('hide');
                    $(".callback").html('<i class="fa fa-phone-square text-success"></i><a class="hidden-md hidden-sm text-success">Заказан</a>')
                }
            });
        }

        //cancel the submit button default behaviours
        return false;
    });
});	