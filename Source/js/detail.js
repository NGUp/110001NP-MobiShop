$('#add-cart').click(function() {
    var ID = $('#mobile-id').val();

    $.ajax({
        url: '../Process/AddCartController.php',
        data: { id: ID },
        type: 'POST',
        success: function(result) {
            alert(result);
        }
    });
});