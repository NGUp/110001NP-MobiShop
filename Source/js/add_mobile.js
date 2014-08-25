var checkName = false;
var checkManufacturer = false;
var checkOrigin = false;
var checkType = false;
var checkPrice = false;
var checkQuantity = false;

$('#mobile').keyup(function() {
    if (regex.checkText($(this).val())) {
        checkName = true;
    }
    else {
        checkName = false;
    }
});

$('#manufacturer').click(function() {
    if ($(this).val() != '') {
        checkManufacturer = true;
    }
    else {
        checkManufacturer = false;
    }
});

$('#origin').click(function() {
    if ($(this).val() != '') {
        checkOrigin = true;
    }
    else {
        checkOrigin = false;
    }
});

$('#type').click(function() {
    if ($(this).val() != '') {
        checkType = true;
    }
    else {
        checkType = false;
    }
});

$('#quantity').keyup(function() {
    if (regex.checkNumber($(this).val())) {
        checkQuantity = true;
    }
    else {
        checkQuantity = false;
    }
});

$('#price').keyup(function() {
    if (regex.checkNumber($(this).val())) {
        checkPrice = true;
    }
    else {
        checkPrice = false;
    }
});

$('#cancel').click(function() {
    window.location = '../page_manager_mobile.php';
});

$('#submit').click(function() {
    if (checkName == true && checkManufacturer == true &&
        checkOrigin == true && checkPrice == true &&
        checkQuantity == true && checkType == true) {
        $(this).prop('type', 'submit');
    }
    else {
        $('#alert').html(
            '<div class="alert alert-danger alert-dismissable add_alert">' +
                '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
                '<strong>Cảnh báo!</strong> Có vấn đề khi nhập liệu.' +
                '</div>'
        );
    }
});