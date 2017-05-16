/* global qa_root, max_script_count */

/*
 * Javascript for adding/removing fields on create page.
 * @author : Martin Znamenacek
 * 
 */

const ANIM_DUR = 400;
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
/*
 * Adds disable css class to the element.
 * @param element to disable
 */
function disable(element) {
    $(element).addClass(BTN_DISABLE);
}

/*
 * Remove disable css from the element
 * @param element to enable
 */
function enable(element) {
    $(element).removeClass(BTN_DISABLE);
}

/*
 * Recieve html code representaion of the script fields.
 * @param counter of the script fields to be generated
 */
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

/*
 * Funcion for adding script fields handling.
 */
function addScript() {
    var counter = getCounter();
    if (counter > COUNTER_MAX) {
        return;
    } else if (counter == COUNTER_MAX) {
        disable("#btn-add");
    }

    addContent(counter);
}

/*
 * Funcion for removing script fields handling.
 */
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
    $toRemove.hide(ANIM_DUR, function () {
        $toRemove.remove();
    });

    if (counter <= COUNTER_MAX) {
        enable("#btn-add");
    }
}


// inicialize buttons on page load
$(document).ready(function () {
    if (getCounter() <= COUNTER_MIN) {
        disable("#btn-remove");
    } else {
        enable("#btn-remove");
    }
    if (getCounter() > COUNTER_MAX) {
        disable("#btn-add");
    } else {
        enable("#btn-add");
    }
});

