
function getCounter() {
    var counter = $('#counter').attr('value');
    return counter;
}

function setCounter(number) {
    $('#counter').attr('value', number);
}

function getContent(counter) {
    return '<tr><td class="qa-form-tall-label">Link to Github repository</td></tr>' +
            '<tr><td class="qa-form-tall-data"><input name="scriptgit' + counter + '" id="scriptgit' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr><td class="qa-form-tall-label">Path to file to run</td></tr>' +
            '<tr><td class="qa-form-tall-data"><input name="scriptfile' + counter + '" id="scriptfile' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr><td class="qa-form-tall-label">Commit</td></tr>' +
            '<tr><td class="qa-form-tall-data"><input name="scriptcomm' + counter + '" id="scriptcomm' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr><td colspan="1" class="qa-form-tall-spacer">&nbsp;</td></tr>';
}

function addScript() {
    var counter = getCounter();

    var content = getContent(counter);

    $('#counter').parent().parent().before(content);

    setCounter(++counter);
}

function removeScript() {
    var counter = getCounter();
    if (counter <= 2) {
        return;
    }
    
    var parent = $('#counter').parent().parent();
    
    for (var i = 0; i < 7; i++) {
        parent.prev().remove();
    }


    setCounter(--counter);
}