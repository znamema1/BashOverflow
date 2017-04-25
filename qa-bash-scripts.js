const ANIM_DUR = 400;
function getCounter() {
    var counter = $('#counter').attr('value');
    return counter;
}

function setCounter(number) {
    $('#counter').attr('value', number);
}

function getContent(counter) {
    $.ajax({
        url: window.location.href + '../ajax_create_page/' + counter,
        success: function (data) {
            var $content = $(data);
            $('#counter').parent().parent().before($content);
            $content.show(ANIM_DUR);
            setCounter(++counter);
            if (counter <= 3) {
                $("#btn-remove").removeClass("qa-btn-disabled");
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("An error while retrieving data: \n" +
                    textStatus + "\n\n" + 
                    errorThrown);
        }
    });
}

function addScript() {
    var counter = getCounter();
    if (counter > 10) {
        return;
    } else if (counter > 9) {
        $("#btn-add").addClass("qa-btn-disabled");
    }

    getContent(counter);
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
    if (counter <= 3) {
        $("#btn-add").removeClass("qa-btn-disabled");
    }
}

$(document).ready(function () {
    if (getCounter() <= 2) {
        $("#btn-remove").addClass("qa-btn-disabled");
    } else {
        $("#btn-remove").removeClass("qa-btn-disabled");
    }
});

