$('#submit').click(function() {
    var checkName = regex.checkText($('#name').val());
    var checkPrice = regex.checkNumber($('#price').val());
    var checkQuantity = regex.checkText($('#quantity').val());

    if (checkName == true && checkPrice == true && checkQuantity == true) {
        $('#submit').prop('type', 'submit');
    }
    else {
        $('#alert').html(
            '<div class="alert alert-danger alert-dismissable add_alert">' +
                '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
                '<strong>Cảnh báo!</strong> Có vấn đề khi nhập liệu.' +
                '</div>'
        );
    }
})

$('#cancel').click(function() {
    window.location = "../page_manager_mobile.php";
})