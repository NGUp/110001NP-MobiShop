var checkName = false;
var checkBirthday = false;
var turn = 0;

$('#btnReset').change(function() {
    if (turn % 2 == 0) {
        $('#reset').val(1);
    }
    else {
        $('#reset').val(0);
    }
    turn++;
});

$('#submit').click(function() {
    if (regex.checkTextUnicode($('#name').val())) {
        checkName = true;
    }

    if (regex.checkDate($('#birthday').val())) {
        checkBirthday = true;
    }

    if (checkBirthday == true && checkName == true) {
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

$('#cancel').click(function() {
    window.location = "../page_manager_account.php";
})