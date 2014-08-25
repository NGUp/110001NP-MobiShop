$('.remove-sign').click(function() {
    var ID  = parseInt($(this).closest('tr').find('td:nth-child(6)').text());
    var cost   = parseInt($(this).closest('tr').find('td:nth-child(9)').text());

    $.ajax({
        url: '../Process/RemoveCartItemController.php',
        data: { id: ID },
        type: 'POST',
        success: function(result) {
            $('#total-value').val($('#total-value').val() - cost);
            $('#total').text(parseFloat($('#total-value').val()).toFixed(1).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString() + ' VND');
        }
    });
    $(this).parent().parent().remove();
});

$('#cancel').click(function() {
    $.ajax({
        url: '../Process/RemoveCartController.php',
        type:   'POST',
        success: function(result) {
            alert(result);
            window.location = "../index.php";
        }
    });
});

$('#payment').click(function() {
    console.log($('#total-value').val());
    $.ajax({
        url: '../Process/PayCartController.php',
        data: {
            total:  $('#total-value').val()
        },
        type:   'POST',
        success: function(result) {
            alert(result);
            window.location = "../index.php";
        }
    });
});

/**
 *  Change Quantity for each Mobile in cart
 *
 *  column[6]: ID
 *  column[7]: stored
 *  column[8]: price
 *  column[9]: cost
 */
$('.quantity-value').keyup(function() {
    if (event.which == 13) {
        var price  = parseInt($(this).closest('tr').find('td:nth-child(8)').text());
        var stored = parseInt($(this).closest('tr').find('td:nth-child(7)').text());
        var ID     = parseInt($(this).closest('tr').find('td:nth-child(6)').text());

        if (stored - $(this).val() > -1) {
            // Show on page
            $('#total-value').val($('#total-value').val() - parseInt($(this).closest('tr').find('td:nth-child(9)').text()) + price * $(this).val());
            $('#total').text(parseFloat($('#total-value').val()).toFixed(1).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString() + ' VND');

            // Store
            $(this).closest('tr').find('td:nth-child(4)').text((price * $(this).val()).toFixed(1).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString() + ' VND');
            $(this).closest('tr').find('td:nth-child(9)').text(price * $(this).val());

            $.ajax({
                url: '../Process/EditCartController.php',
                data: { id: ID,
                        quantity: $(this).val()},
                type: 'POST',
                success: function(result) {
                }
            });
        }
        else {
            alert('Hàng trong kho không đủ đáp ứng cho nhu cầu của bạn.');
        }
    }
});

// Add mobile to Shopping Cart
$('.cart-button').click(function() {
    var ID = $(this).siblings(":text").attr("value");
    $.ajax({
        url: '../Process/AddCartController.php',
        data: { id: ID },
        type: 'POST',
        success: function(result) {
            alert(result);
        }
    });
});