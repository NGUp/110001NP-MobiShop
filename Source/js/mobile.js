function mobileController($scope) {
    // Remove Mobile
    $('.remove-sign').click(function() {
        $.ajax({
            url: '../Process/RemoveMobileManageController.php',
            data: {
                id: $(this).siblings(":hidden").attr("value")
            },
            type: 'POST',
            success: function(result) {
            }
        });
        $(this).parent().parent().remove();
    });

    func.next('page_manager_mobile');
    func.previous('page_manager_mobile');
    func.previousKey('page_manager_mobile', $('#previous-keyword').val());
    func.nextKey('page_manager_mobile', $('#next-keyword').val());
}