// global constants
const ANIM_DUR = 400;

// local constants
const MAX_FILE_SIZE = 10 * 1024 * 1024;
const FILE_TYPE = "text/plain";
const units = ["", "k", "M", "G", "T", "P", "E", "Z", "Y"];


var running = false;

function runText(script_id) {
    var input = $('#datain').val();

    if (input.length == 0) {
        alert("Empty input");
        return false;
    }

    $.ajax({
        url: qa_root + 'ajax_run_page_text',
        type: 'POST',
        data: {
            scriptid: script_id,
            datain: input
        },
        success: showResult,
        error: function (err) {
            alert("Error while sending data!");
        },
        complete: done
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

function runFile(script_id) {
    var file = $('#filein')[0].files[0]; //Files[0] = 1st file

    if (file.type != FILE_TYPE) {
        alert('Only ' + FILE_TYPE + ' type is supported! You provided: ' + file.type);
        return false;
    }

    if (file.size > MAX_FILE_SIZE) {
        alert('Max upload size is ' + getNiceSize(MAX_FILE_SIZE) + '! Your file size: ' + getNiceSize(file.size));
        return false;
    }

    var reader = new FileReader();
    reader.readAsText(file, 'UTF-8');
    reader.onload = function (event) {
        $.ajax({
            url: qa_root + 'ajax_run_page_file',
            type: 'POST',
            data: {
                scriptid: script_id,
                fileName: file.name,
                content: event.target.result
            },
            success: function (data) {
                showResult(data);
                $('#output').promise().done(function() {
                    $('#outputdl')[0].click();
                });
            },
            error: function (err) {
                alert("Error while sending data!");
            },
            complete: done
        });
    };
    reader.onerror = function (event) {
        alert("Error while reading file");
        return false;
    }

    return true;
}


function handleInput() {
    if (running) {
        alert("A run is being executed!");
        return;
    }
    running = true;

    var parts = window.location.href.split('/');
    var scriptid = parts[parts.length - 1];
    var runFn;
    if ($('#filein')[0].files.length > 0) {
        runFn = runFile;
    } else {
        runFn = runText;
    }

    if (!runFn(scriptid)) {
        running = false;
    }
}

function showResult(result) {
    var $content = $(result);
    var $output = $('#output');

    $output.fadeOut(ANIM_DUR, function() {
        $output.html($content);
        $output.fadeIn(ANIM_DUR);
    });
}

function done() {
    running = false;
}

$(document).ready(function () {
    var $content = $('<div id="output" style="display: none" class="qa-part-form2"></div>');
    $content.hide();
    $('.qa-main').append($content);
});