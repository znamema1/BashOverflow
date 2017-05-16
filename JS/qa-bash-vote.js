/* global qa_root */

/*
 * Javascript for vote function on detail and run page.
 * @author : Martin Znamenacek
 * 
 */

/*
 * Function for vote handling, sends vote by ajax to the server.
 * @param vote "up" or "down"
 */
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
/*
 * Shows new vote html.
 * @param html to show
 */
function showResultV(data) {
    $('.qa-voting-net').html(data);
}

