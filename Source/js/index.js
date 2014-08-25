$('.cart-button').click(function() {
    var ID = $(this).siblings(":hidden").attr("value");
    $.ajax({
        url: '../Process/AddCartController.php',
        data: { id: ID },
        type: 'POST',
        success: function(result) {
            alert(result);
        }
    });
})