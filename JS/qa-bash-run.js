// global constants
const ANIM_DUR = 400;

// local constants
const MAX_FILE_SIZE = 10 * 1024 * 1024;
const FILE_TYPE = "text/plain";
const units = ["", "k", "M", "G", "T", "P", "E", "Z", "Y"];

var fileValid = false;
var running = false;

function runText(script_id, waiting_elem) {
    $.ajax({
        url: qa_root + 'ajax_run_page_text/' + script_id,
        type: 'POST',
        data: {
//            scriptid: script_id,
            datain: $('#datain').val()
        },
        success: showResult,
        error: function (err) {
            alert("Error while sending data!");
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

function runFile(script_id, waiting_elem) {
    var file = $('#filein')[0].files[0]; //Files[0] = 1st file
    var reader = new FileReader();
    reader.readAsText(file, 'UTF-8');
    reader.onload = function (event) {
        $.ajax({
            url: qa_root + 'ajax_run_page_file/' + script_id,
            type: 'POST',
            data: {
//                scriptid: script_id,
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
                alert("Error while sending data!");
            },
            complete: prepareDone(waiting_elem)
        });
    };
    reader.onerror = function (event) {
        alert("Error while reading file");
        return false;
    }

    return true;
}


function handleInput(elem) {
    if (running) {
        alert("A run is being executed!");
        return;
    }
    running = true;

    var parts = window.location.href.split('/');
    var scriptid = parts[parts.length - 1];
    var runFn;
    if (fileValid) {
        runFn = runFile;
    } else if ($('#datain').val().length > 0) {
        runFn = runText;
    } else {
        alert("No valid input!");
        running = false;
        return false;
    }

    if (runFn(scriptid, elem)) {
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
        if (evt.target.files.length == 0) {
            $msgElem.fadeOut(ANIM_DUR);
            return;
        }

        var file = evt.target.files[0]; //Files[0] = 1st file

        if (file.type != FILE_TYPE) {
            msg = 'Only ' + FILE_TYPE + ' type supported.';
            title = 'You provided: ' + (file.type.length > 0 ? file.type : "<unknown>" );
        } else if (file.size > MAX_FILE_SIZE) {
            msg = 'Maximum allowed size is ' + getNiceSize(MAX_FILE_SIZE) + '.';
            title = 'Your file is too large: ' + getNiceSize(file.size);
        } else {
            msg = getNiceSize(file.size);
            title = "Your file is approved";
            fileValid = true;
        }

        $msgElem.fadeOut(ANIM_DUR/2, function () {
            $msgElem.html(msg);
            $msgElem.attr("title", title);
            if (!fileValid) {
                $msgElem.addClass("qa-error");
            } else {
                $msgElem.removeClass("qa-error");
            }
            $msgElem.fadeIn(ANIM_DUR/2);
        });
    });
});
