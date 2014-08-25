// REGISTER PAGE
function registerController($scope) {
    var checkAccount    = false;
    var checkPassword   = false;
    var checkConfirm    = false;
    var checkCaptcha    = false;
    var checkAvailable  = false;
    var CaptchaCode;

    $.ajax({
        url: '../Process/CaptchaController.php',
        success: function(result) {
            CaptchaCode = result;
        }
    });

    /**
     * check Regular Expression of Account
     */
    $('#app_register_account').keyup(function(e) {
        var account = $scope.app_input_account;
        var pattern = /^[a-zA-Z0-9_]+$/.test(account);
        checkAccount = pattern;
    });
    /**
     *  check Strong of Password
     */
    $('#app_register_password').keyup(function(e) {
        var password = $scope.app_input_password;
        var okRegex = new RegExp("^(?=.{6,}).*$", "g");
        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
        var result;

        if (strongRegex.test(password)) {
            result = 'Mật khẩu hoàn hảo';
            checkPassword = true;
        }
        else if (mediumRegex.test(password)) {
            result = 'Mật khẩu tốt';
            checkPassword = true;
        }
        else if (okRegex.test(password)) {
            result = 'Mật khẩu yếu';
            checkPassword = true;
        }
        else {
            result = 'Mật khẩu phải tối thiểu 6 kí tự';
            checkPassword = false;
        }

        $scope.$apply(function() {
            $scope.alertPassword = { text: password };
        });
    });
    /**
     * Check Confirm Password
     */
    $('#app_register_confirm').keyup(function(e) {
        var password = $scope.app_input_password;
        if (password == $scope.app_input_confirm) {
            if (password.length > 0) {
                checkConfirm = true;
            }
            else {
                checkConfirm = false;
            }
        }
        else  {
            checkConfirm = false;
        }
    });
    /**
     * generate Catpcha Code
     */
    $scope.refreshCaptcha = function() {
        $('#Captcha').attr('src', '../Process/Model/CaptchaModel.php?' + Math.random());
        $.ajax({
            url: '../Process/CaptchaController.php',
            success: function(result) {
                CaptchaCode = result;
                if ($('#input-captcha').val() == CaptchaCode) {
                    checkCaptcha = true;
                }
                else {
                    checkCaptcha = false;
                }
            }
        });
    }
    /**
     * check Duplicate Account
     */
    $('#check-button').click(function() {
        var account = $('#register_account').val();
        if (regex.checkAccount(account) == false) {
            Alert.render('Tên đăng nhập không hợp lệ.');
            checkAvailable = false;
            return;
        }

        if (account.length > 2) {
            $.ajax({
                url: '../Process/DuplicateController.php',
                data: { username: account },
                type: 'POST',
                success: function(result) {
                    if (result == 'true') {
                        Alert.render('Tên đăng nhập hợp lệ.');
                        checkAvailable = true;
                    }
                    else {
                        Alert.render('Tên đăng nhập đã có người sử dụng.');
                    }
                }
            });
        }
        else {
            Alert.render('Tên đăng nhập không hợp lệ.');
            checkAvailable = false;
        }
    });
    /**
     * check Captcha
     */
    $('#input-captcha').keyup(function() {
        if ($('#input-captcha').val() == CaptchaCode) {
            checkCaptcha = true;
        }
        else {
            checkCaptcha = false;
        }
    });
    /**
     * If form is valid, replace type "button" to "submit" and go to Server Side
     */
    $('#submit').click(function() {
        if (regex.checkAccount($scope.app_input_account) === false) {
            Alert.render('Có vấn đề với tên đăng nhập của bạn.');
            return;
        }

        if ($scope.app_input_account.length > 2) {
            $.ajax({
                url: '../Process/DuplicateController.php',
                data: { username: $scope.app_input_account },
                type: 'POST',
                async: false,
                success: function(result) {
                    console.log('OK');
                    if (result == 'true') {
                        checkAvailable = true;
                    }
                    else {
                        checkAvailable = false;
                    }
                }
            });
        }

        console.log(checkAvailable);

        if (checkAvailable == false) {
            Alert.render('Hình như bạn chưa nhấn nút "Kiểm tra" tên đăng nhập.');
            return;
        }
        if ($scope.app_input_fullname != '' && regex.checkTextUnicode($scope.app_input_fullname) === false) {
            Alert.render('Có vấn đề với họ tên của bạn.');
            return;
        }
        if (checkPassword == false) {
            Alert.render('Mật khẩu phải tối thiểu là 6 kí tự.');
            return;
        }
        if (checkConfirm == false) {
            Alert.render('Xác nhận mật khẩu chưa chính xác.');
            return;
        }
        if (checkCaptcha == false) {
            Alert.render('Mã Captcha không chính xác.');
            return;
        }

        var day     = $('#register_day').val();
        var month   = $('#register_month').val();
        var year    = $('#register_year').val();

        if (day != '' && month != '' && year != '') {
            if (day == 31) {
                if (month == 2 || month == 4 || month == 6 || month == 9 || month == 10) {
                    Alert.render('Không tồn tại ngày này.');
                    return;
                }
            }

            if (month == 2) {
                if ((day == 30) || (day == 29 && !(year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)))) {
                    Alert.render('Không tồn tại ngày này.');
                    return;
                }
            }
        }

        console.log('OK');

        // replace "button" to "submit"
        $('#submit').prop('type', 'submit');
    })
}