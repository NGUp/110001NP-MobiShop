// LOGOUT
function loginController($scope) {
    $scope.logout = function() {
        console.log('OK');
        window.location = '../../Process/LogoutController.php';
    }
}

// Fade in/out Go To Top
$('.app_arrow_top').hide();
$(window).scroll(function(){
    if($(this).scrollTop()>100)
    {
        $('.app_arrow_top').fadeIn();
    }
    else
    {
        $('.app_arrow_top').fadeOut();
    }
});

// go to header
$('.app_arrow_top').click(function() {
    jQuery("html, body").animate({ scrollTop: 0 }, "slow");
});

// SEE MORE button
$('.see-more').click(function() {
    var height = $('.wrapper-content').height() + 1168;

    if (height <= $('.max-height').val()) {
        $('.wrapper-content').animate({'height': height});
    }
    else {
        $(this).prop({'class': 'hidden' });
    }
});