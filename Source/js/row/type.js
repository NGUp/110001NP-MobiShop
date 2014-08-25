$('.remove-sign').click(function () {
    console.log($(this).closest('tr').find('td:nth-child(1)').text());
    $.ajax({
        url: '../Process/RemoveTypeMobileManageController.php',
        data: { id: $(this).closest('tr').find('td:nth-child(1)').text()},
        type: 'POST',
        success: function (result) {
        }
    });
    $(this).parent().parent().remove();
});

// Edit Type of Mobile when double click on cell
$('td').dblclick(function () {
    var originalContent = $(this).text();

    if (originalContent == $(this).closest('tr').find('td:nth-child(2)').text()) {
        $(this).addClass('cellEditing');
        $(this).html('<input type="text" value="' + originalContent + '" />');
        $(this).children().first().focus();

        $(this).children().first().keypress(function (event) {
            if (event.which == 13) {
                var newContent = $(this).val();
                if (!regex.checkTextUnicode(newContent)) {
                    $(this).parent().text(originalContent);
                    $(this).parent().removeClass('cellEditing');
                } else {
                    $.ajax({
                        url: '../Process/EditTypeMobileManageController.php',
                        data: { id: $(this).closest('tr').find('td:nth-child(1)').text(),
                            name: newContent},
                        type: 'POST',
                        success: function (result) {
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