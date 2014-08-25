function typeController($scope) {
    // Remove Type of Mobile
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

    // Add Mobile
    $('#add-button').click(function () {
        $.ajax({
            url: '../Process/AddTypeMobileManageController.php',
            data: { name: $('#name-type').val() },
            type: 'POST',
            success: function (result) {
                var id = result;
                if (id == -1) {
                    $('#alert').html(
                        '<div class="alert alert-danger alert-dismissable add_alert">' +
                            '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
                            '<strong>Cảnh báo!</strong> Loại điện thoại này đã tồn tại trong cửa hàng.' +
                            '</div>'
                    );
                }
                else {
                    $('#body-table').append(
                        '<tr>' +
                            '<td>' + id + '</td>' +
                            '<td>' + $('#name-type').val() + '</td>' +
                            '<td><span class="glyphicon glyphicon-remove remove-sign"></span></td>' +
                            '</tr>' +
                            '<script src="js/row/type.js"></script>'
                    );
                }
            }
        });
    });

    func.next('page_manager_type_mobile');
    func.previous('page_manager_type_mobile');
    func.previousKey('page_manager_type_mobile', $('#previous-keyword').val());
    func.nextKey('page_manager_type_mobile', $('#next-keyword').val());
}