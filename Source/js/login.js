$('#login-password').keypress(function(event) {
    if (event.which == 13) {
        $('#submit').click();
    }
});

$('#submit').click(function() {
    var username = $('#login-user').val();
    var pattern  = /^[a-zA-Z0-9_]+$/.test(username);
    var remember = $('#login-keep').val();

    if (document.getElementById('login-keep').checked) {
        $('#login-keep').prop('value', 'true');
    }
    else {
        $('#login-keep').prop('value', 'false');
    }

    if (pattern && $('#login-password').val().length > 5) {
        $.ajax({
            url: '../Process/LoginController.php',
            data: {
                user: username,
                password: $('#login-password').val(),
                remember: remember
            },
            type: 'POST',
            async: false,
            success: function(result) {
                console.log(result);

                if (result == 'false') {
                    $('#alert').html(
                        func.render('AlertTemplate', {
                            status: 'danger',
                            alert: 'Tên đăng nhập hoặc mật khẩu không chính xác.'
                        })
                    )
                }
                else {
                    window.location = "../index.php";
                }
            }
        });
    }
    else {
        $('#alert').html(
            func.render('AlertTemplate', {
                status: 'warning',
                alert: 'Tên đăng nhập hoặc mật khẩu không hợp lệ.'
            })
        )
    }
});