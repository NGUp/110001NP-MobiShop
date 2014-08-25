function orderController($scope) {
    // Remove Order
    $('.remove-sign').click(function() {
        $.ajax({
            url: '../Process/RemoveOrderManageController.php',
            data: {
                id: $(this).siblings(":hidden").attr("value")
            },
            type: 'POST',
            success: function(result) {
            }
        });
        $(this).parent().parent().remove();
    });

    func.next('page_manager_order');
    func.previous('page_manager_order');
    func.previousKey('page_manager_order', $('#previous-keyword').val());
    func.nextKey('page_manager_order', $('#next-keyword').val());
}