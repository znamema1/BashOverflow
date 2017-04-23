const ANIM_DUR = 400;

function getCounter() {
    var counter = $('#counter').attr('value');
    return counter;
}

function setCounter(number) {
    $('#counter').attr('value', number);
}

function getContent(counter) {
    return '<tr style="display: none"><td class="qa-form-tall-label">Link to Github repository</td></tr>' +
            '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptgit' + counter + '" id="scriptgit' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr style="display: none"><td class="qa-form-tall-label">Path to file to run</td></tr>' +
            '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptfile' + counter + '" id="scriptfile' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr style="display: none"><td class="qa-form-tall-label">Commit</td></tr>' +
            '<tr style="display: none"><td class="qa-form-tall-data"><input name="scriptcomm' + counter + '" id="scriptcomm' + counter + '" type="text" value="" class="qa-form-tall-text"></td></tr>' +
            '<tr style="display: none"><td colspan="1" class="qa-form-tall-spacer">&nbsp;</td></tr>';
}

function addScript() {
    var counter = getCounter();
    var $content = $(getContent(counter));

    $('#counter').parent().parent().before($content);

    $content.show(ANIM_DUR);

    setCounter(++counter);
    if (counter <= 3) {
        $("#btn-remove").removeClass("qa-btn-disabled");
    }
}

function removeScript() {
    var counter = getCounter();

    if (counter <= 2) {
        return;
    } else if (counter <= 3) {
        $("#btn-remove").addClass("qa-btn-disabled");
    }

    var $current = $('#counter').parent().parent().prev();
    var $toRemove = $();

    for (var i = 0; i < 7; i++) {
        $toRemove = $toRemove.add($current);
        $current = $current.prev();
    }

    $toRemove.hide(ANIM_DUR, function () {
        $toRemove.remove();
    });

    setCounter(--counter);
}

$(document).ready(function () {
    if (getCounter() <= 3)
        $("#btn-remove").addClass("qa-btn-disabled");
});

