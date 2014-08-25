function manufacturerController($scope) {
    // Remove Manufacturer
    $('.remove-sign').click(function() {
        $.ajax({
            url: '../Process/RemoveManufacturerManageController.php',
            data: {
                id: $(this).siblings(":hidden").attr("value")
            },
            type: 'POST',
            success: function(result) {
            }
        });
        $(this).parent().parent().remove();
    });

    func.next('page_manager_manufacturer');
    func.previous('page_manager_manufacturer');
    func.previousKey('page_manager_manufacturer', $('#previous-keyword').val());
    func.nextKey('page_manager_manufacturer', $('#next-keyword').val());
}