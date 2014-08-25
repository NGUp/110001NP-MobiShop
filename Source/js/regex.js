var regex = {};

regex.checkPermission = function(permission) {
    var pattern = /^[0-1]$/.test(permission);
    return pattern;
}

regex.checkAccount = function(account) {
    var pattern = /^[a-zA-Z0-9_]+$/.test(account);
    return pattern;
}

regex.checkTextUnicode = function(text) {
    var pattern = /^[^0-9!@#$%^&*\(\)_\+\{\}\|\[\]\\\-=:";',.\/<>\?]+$/.test(text);
    return pattern;
}

regex.checkTextUnicodeWithNumber = function(text) {
    var pattern = /^[^!@#$%^&*\(\)_\+\{\}\|\[\]\\\-=";',.\/<>\?]+$/.test(text);
    return pattern;
}

regex.checkDate = function(date) {
    var pattern = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/.test(date);
    return pattern;
}

regex.checkTextNonUnicode = function(text) {
    var pattern = /^[a-zA-Z ]$/.test(text);
    return pattern;
}

regex.checkText = function(text) {
    var pattern = new RegExp("[a-zA-Z0-9 ]+", "g").test(text);
    return pattern;
}

regex.checkNumber = function(number) {
    var pattern = /^[0-9]+$/.test(number);
    return pattern;
}