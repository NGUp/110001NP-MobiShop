function accountController($scope) {
    // Remove Account
    $('.remove-sign').click(function() {
        $.ajax({
            url: '../Process/RemoveAccountManageController.php',
            data: { id: $(this).siblings(":hidden").attr("value")},
            type: 'POST',
            success: function(result) {
            }
        });
        $(this).parent().parent().remove();
    });

    func.next('page_manager_account');
    func.previous('page_manager_account');
    func.previousKey('page_manager_account', $('#previous-keyword').val());
    func.nextKey('page_manager_account', $('#next-keyword').val());
}