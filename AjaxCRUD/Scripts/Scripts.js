$(function() {
    $("#loaderbody").addClass('hide');


    $(document).bind('ajaxStart', function() {
        $("#loaderbody").removeClass('hide');
    }).bind('ajaxStop', function() {
        $("#loaderbody").addClass('hide');
    });
});                                 



function jqPost(form) {
    $.validator.unobtrusive.parse(form);
    if ($(form).valid()) {
        var ajaxConfig = {
            type: 'POST',
            url: form.action,
            data: new FormData(form),
            success: function(response) {
                if (response.success) {
                    $("#firstTab").html(response.html);
                    AddNewTab($(form).attr('data-restUrl'), true);
                    $.notify(response.message, "success");

                    if (typeof jqTable !== 'undefined' && $.isFunction(jqTable))
                        jqTable();
                } else {
                    $.notify(response.message, "error");
                }
            }
        }
        if ($(form).attr('enctype') == "multipart/form-data") {
            ajaxConfig["contentType"] = false;
            ajaxConfig["processData"] = false;
        }
        $.ajax(ajaxConfig);

    }
    return false;
}

function AddNewTab(resetUrl, showViewTab) {
    $.ajax({
        type: 'GET',
        url: resetUrl,
        success: function(response) {
            $("#secondTab").html(response);
            $('ul.nav.nav-tabs a:eq(1)').html('Add New');
            if (showViewTab)
                $('ul.nav.nav-tabs a:eq(0)').tab('show');
        }

    });
}



function Delete(url) {
    if (confirm('Are you sure you want to delete this student ?') == true) {
        $.ajax({
            type: 'POST',
            url: url,
            success: function(response) {
                if (response.success) {
                    $("#firstTab").html(response.html);
                    $.notify(response.message, "success");
                    if (typeof jqTable !== 'undefined' && $.isFunction(jqTable))
                        jqTable();
                } else {
                    $.notify(response.message, "error");
                }
            }

        });

    }
}

function Edit(url) {
    $.ajax({
        type: 'GET',
        url: url,
        success: function(response) {
            $("#secondTab").html(response);
            $('ul.nav.nav-tabs a:eq(1)').html('Edit');
            $('ul.nav.nav-tabs a:eq(1)').tab('show');
        }

    });
}