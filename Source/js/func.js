var func = {};

func.previous = function (link) {
    $('#previous-sign').click(function () {
        var page = parseInt($('#currentPage').val()) - 1;
        if (page < 1) {
        }
        else {
            if ($('#previous').hasClass('active')) {
                $('#previous').removeClass('active');
            }
            window.location = '../' + link + '.php?page=' + page.toString();
        }
    });
}

func.next = function (link) {
    $('#next-sign').click(function () {
        var page = parseInt($('#currentPage').val()) + 1;
        if (page > parseInt($('#maxPage').val())) {
        }
        else {
            if ($('#next').hasClass('active')) {
                $('#next').removeClass('active');
            }
            window.location = '../' + link + '.php?page=' + page.toString();
        }
    });
}

func.previousKey = function (link, keyword) {
    $('#previous-sign-key').click(function () {
        var page = parseInt($('#currentPage').val()) - 1;
        if (page < 1) {
        }
        else {
            if ($('#previous-key').hasClass('active')) {
                $('#previous-key').removeClass('active');
            }
            window.location = '../' + link + '.php?page=' + page.toString() + '&keyword=' + keyword;
        }
    });
}

func.nextKey = function (link, keyword) {
    $('#next-sign-key').click(function () {
        var page = parseInt($('#currentPage').val()) + 1;
        if (page > parseInt($('#maxPage').val())) {
        }
        else {
            if ($('#next-key').hasClass('active')) {
                $('#next-key').removeClass('active');
            }
            window.location = '../' + link + '.php?page=' + page.toString() + '&keyword=' + keyword;
        }
    });
}

/**
 * Render HTML template
 *
 * @author: Nguyen Trung Loi (loi.nguyen)
 * @copyright: PesLook
 *
 * @param template id of element
 * @param data object
 */
func.render = function(template, data)
{
    var html = $('#'+template).html();
    var pattern = /\{[\sa-z0-9_]+\}/igm;
    var result = '';
    var index = 0;
    var var_;

    while (match = pattern.exec(html)) {
        var_ = match[0].substring(1,match[0].length-1).trim();
        result+=html.substring(index, match.index);
        eval('result+=data.'+var_);
        index = pattern.lastIndex;
    }

    result+=html.substring(index, html.length);
    return result;
}