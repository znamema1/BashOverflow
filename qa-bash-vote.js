function handleVote(vote) {
    var parts = window.location.href.split('/');
    var scriptid = parts[parts.length - 1];
    
    $.ajax({
        url: qa_root + 'ajax_script_vote',
        data: {
            scriptid: scriptid,
            vote: vote
        },
        success: showResultV,
        error: function (err) {
            alert("Error while sending data!");
        }
    });
}

function showResultV(data) {
    $('.qa-voting-net').html(data);
}

