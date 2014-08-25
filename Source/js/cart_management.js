$('.remove-sign').click(function() {
    $.ajax({
        url: '../Process/RemoveCartItemManagerController.php',
        data: {
            cartID:     $('#cartID').val(),
            mobileID:   parseInt($(this).closest('tr').find('td:nth-child(1)').text()),
            quantity:   parseInt($(this).closest('tr').find('td:nth-child(3)').text()),
            total:      $('#total').val()
        },
        type: 'POST',
        success: function(result) {
        }
    });

    $(this).parent().parent().remove();
});

// Edit Type of Mobile when double click on cell
$('td').dblclick(function () {
    var originalContent = $(this).text();
    var stored = parseInt($(this).closest('tr').find('td:nth-child(4)').text());

    if (originalContent == $(this).closest('tr').find('td:nth-child(3)').text()) {
        $(this).addClass('cellEditing');
        $(this).html('<input type="text" value="' + originalContent + '" />');
        $(this).children().first().focus();

        $(this).children().first().keypress(function (event) {
            if (event.which == 13) {
                var newContent = $(this).val();
                if (!regex.checkNumber(newContent) || newContent > stored) {
                    $(this).parent().text(originalContent);
                    $(this).parent().removeClass('cellEditing');
                } else {
                    $.ajax({
                        url: '../Process/EditCartItemManageController.php',
                        data: {
                            cartID:             $('#cartID').val(),
                            mobileID:           parseInt($(this).closest('tr').find('td:nth-child(1)').text()),
                            quantity:           newContent,
                            currentQuantity:    originalContent,
                            total:              $('#total').val()
                        },
                        type: 'POST',
                        success: function (result) {
                            console.log(result);
                        }
                    });
                    $(this).parent().text(newContent);
                    $(this).parent().removeClass('cellEditing');
                }
            }
        });

        $(this).children().first().blur(function () {
            $(this).parent().text(originalContent);
            $(this).parent().removeClass('cellEditing');
        });
    }
});