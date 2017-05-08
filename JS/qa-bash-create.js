// global constants
const ANIM_DUR = 400;

// local constants
const COUNTER_MIN = 2;
const COUNTER_MAX = max_script_count;
const BTN_DISABLE = "qa-btn-disabled";

function getCounter() {
    var counter = $('#counter').attr('value');
    return counter;
}

function setCounter(number) {
    $('#counter').attr('value', number);
}

function disable(element) {
	$(element).addClass(BTN_DISABLE);
}

function enable(element) {
        $(element).removeClass(BTN_DISABLE);
}

function addContent(counter) {
    $.ajax({
        url: qa_root + 'ajax_create_page/' + counter,
        success: function (data) {
            var $content = $(data);
            $content.hide();

            counter = getCounter();
            if (counter > COUNTER_MAX) {
                return;
            }
            setCounter(++counter);

            $('#counter').parent().parent().before($content);
            $content.show(ANIM_DUR);

            if (counter <= COUNTER_MIN + 1) {
                enable("#btn-remove");
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert("Error while retrieving data");
        }
    });
}

function addScript() {
    var counter = getCounter();
    if (counter > COUNTER_MAX) {
        return;
    } else if (counter == COUNTER_MAX) {
        disable("#btn-add");
    }

    addContent(counter);
}

function removeScript() {
    var counter = getCounter();
    --counter;

    if (counter < COUNTER_MIN) {
        return;
    } else if (counter == COUNTER_MIN) {
        disable("#btn-remove");
    }
    setCounter(counter);


    var $current = $('#scriptcomm' + counter).parent().parent().next();
    var $toRemove = $();
    for (var i = 0; i < 8; i++) {
        $toRemove = $toRemove.add($current);
        $current = $current.prev();
    }
/*/
    var $toRemove = $('.script-no' + counter);
//*/

    $toRemove.hide(ANIM_DUR, function () {
        $toRemove.remove();
    });

    if (counter <= COUNTER_MAX) {
        enable("#btn-add");
    }
}

$(document).ready(function () {
    if (getCounter() <= COUNTER_MIN) {
        disable("#btn-remove");
    } else {
        enable("#btn-remove");
    }
});

