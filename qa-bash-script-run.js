
var running = false;

function runText(script_id) {
    alert("Sending data: " + $('#datain').text());
    $.ajax({
        url: window.location.href + '/../../ajax_run_page_text',
        type: 'POST',
        data: {
            scriptid: script_id,
            datain: $('#datain').text()
        },
        success: function (data) {
            appendResult(data);
        },
        error: function (err) {
            alert("An error while sending data!");
        },
        complete: done
    });
}

/*
 function runFile(scriptid) {
 var file = document.getElementById('filein').files[0]; //Files[0] = 1st file
 
 if (file.size > 10 * 1024 * 1024) {
 alert('max upload size is 10 MB');
 return false;
 }
 
 if (file.type != 'text/plain') {
 alert('Only suppoerted file type is plain text!');
 return false;
 }
 
 var reader = new FileReader();
 reader.readAsText(file, 'UTF-8');
 reader.onload = send;
 }
 function send(event) {
 $.ajax({
 url: window.location.href + '/../../ajax_run_page_file',
 data: {
 scriptid: script_id,
 content: event.target.result,
 fileName: document.getElementById('filein').files[0].name
 },
 success: function (data) {
 alert(data);
 appendResult(data);
 //TODO download file in current window without loading a new page!
 },
 error: function (err) {
 alert("An error while sending data!");
 },
 complete: function (d) {
 done();
 }
 });
 }
 */

function handleInput() {
    if (running) {
        alert("Počkej si!");
        return;
    }
    running = true;

    var parts = window.location.href.split('/');
    var scriptid = parts[parts.length - 1];
    if (false) {
        runFile(scriptid);
    } else {
        runText(scriptid);
    }
}

function appendResult(result) {
    $('.qa-main').append(result);
}

function done() {
    running = false;
}
