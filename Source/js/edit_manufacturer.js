var isAvailable = false;

$('#submit').click(function() {
    var checkName = regex.checkText($('#name').val());

    $.ajax({
        url: '../Process/AvailableManufacturerController.php',
        data: { manufacturer: $('#manufacturer').val() },
        type: 'POST',
        async: false,
        success: function(result) {
            if (result == 'true') {
                isAvailable = true;
            }
        }
    });

    if (checkName == true && isAvailable == true) {
        $('#submit').prop('type', 'submit');
    }
    else {
        if (checkName == false) {
            $('#alert').html(
                '<div class="alert alert-danger alert-dismissable add_alert">' +
                    '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
                    '<strong>Cảnh báo!</strong> Có vấn đề khi nhập liệu.' +
                    '</div>'
            );
        }
        else {
            $('#alert').html(
                '<div class="alert alert-danger alert-dismissable add_alert">' +
                    '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
                    '<strong>Cảnh báo!</strong> Nhà sản xuất này đã tồn tại trong cửa hàng.' +
                    '</div>'
            );
        }
    }
})

$('#cancel').click(function() {
    window.location = "../page_manager_manufacturer.php";
})