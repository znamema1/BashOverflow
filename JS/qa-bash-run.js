/* global qa_root, version_id, script_id, err_send, parseFloat, err_run, err_nodata, file_type, err_file_type_tit, max_file_sizele, er, max_file_size, err_file_size_titler_file_type_msg, err_file_type_msg, err_file_type_title, err_file_size_title, err_file_size_msg */

const units = ["", "k", "M", "G", "T", "P", "E", "Z", "Y"];
const ANIM_DUR = 400;

var fileValid = false;
var running = false;

function runText(waiting_elem) {
    $.ajax({
        url: qa_root + 'ajax_run_page_text',
        type: 'POST',
        data: {
            scriptid: script_id,
            versionid: version_id,
            datain: $('#datain').val()
        },
        success: showResult,
        error: function (err) {
            alert(err_send);
        },
        complete: prepareDone(waiting_elem)
    });

    return true;
}

function getNiceSize(fileSize) {
    var i = 0;

    for (; fileSize > 1000 && i < units.length - 1; ++i) {
        fileSize = fileSize / 1024;
    }

    fileSize = parseFloat(Math.round(fileSize * 100) / 100).toFixed(1);
    return fileSize + ' ' + units[i] + 'B';
}

function runFile(waiting_elem) {
    var file = $('#filein')[0].files[0]; //Files[0] = 1st file
    var reader = new FileReader();
    reader.readAsText(file, 'UTF-8');
    reader.onload = function (event) {
        $.ajax({
            url: qa_root + 'ajax_run_page_file',
            type: 'POST',
            data: {
                scriptid: script_id,
                versionid: version_id,
                fileName: file.name,
                content: event.target.result
            },
            success: function (data) {
                showResult(data);
                $('#output').promise().done(function () {
                    $('#outputdl')[0].click();
                });
            },
            error: function (err) {
                alert(err_send);
            },
            complete: prepareDone(waiting_elem)
        });
    };
    reader.onerror = function (event) {
        alert("Error while reading file");
        return false;
    };

    return true;
}


function handleInput(elem) {
    if (running) {
        alert(err_run);
        return;
    }
    running = true;

    var runFn;
    if (fileValid) {
        runFn = runFile;
    } else if ($('#datain').val().length > 0) {
        runFn = runText;
    } else {
        alert(err_nodata);
        running = false;
        return false;
    }

    if (runFn(elem)) {
        qa_show_waiting_after(elem, false);
    } else {
        running = false;
    }
}

function showResult(result) {
    var $content = $(result);
    var $output = $('#output');

    $output.fadeOut(ANIM_DUR, function () {
        $output.html($content);
        $output.fadeIn(ANIM_DUR);
    });
}

function prepareDone(waiting_elem) {
    return function (data) {
        running = false;
        qa_hide_waiting(waiting_elem);
    };
}

$(document).ready(function () {
    var $content = $('<div id="output" style="display: none" class="qa-part-form2"></div>');
    $content.hide();
    $('.qa-main').append($content);

    var filemsgID = 'filemsg';
    $content = $('<span id="' + filemsgID + '"></span>');
    $content.fadeOut();
    $('#filein').parent().append($content);

    $('#filein').change(function (evt) {
        var msg = "", title = "";
        var $msgElem = $('#' + filemsgID);

        fileValid = false;
        if (evt.target.files.length === 0) {
            $msgElem.fadeOut(ANIM_DUR);
            return;
        }

        var file = evt.target.files[0]; //Files[0] = 1st file

        if (file.type != file_type) {
            msg = err_file_type_msg;
            title = err_file_type_title + ' ' + (file.type.length > 0 ? file.type : "<unknown>");
        } else if (file.size > max_file_size) {
            msg = err_file_size_msg + ' ' + getNiceSize(max_file_size) + '.';
            title = err_file_size_title + ' ' + getNiceSize(file.size);
        } else {
            msg = getNiceSize(file.size);
            title = "Your file is approved";
            fileValid = true;
        }

        $msgElem.fadeOut(ANIM_DUR / 2, function () {
            $msgElem.html(msg);
            $msgElem.attr("title", title);
            if (!fileValid) {
                $msgElem.addClass("qa-error");
            } else {
                $msgElem.removeClass("qa-error");
            }
            $msgElem.fadeIn(ANIM_DUR / 2);
        });
    });
});
