$(document).ready(function(){
    if (!$('#coopTote1').prop('checked')) {
        $('#coopStep').prop('disabled', true);
    }
});

$('#coopTote1').click(function(){
    $('#coopStep').prop('disabled', !$('#coopTote1').prop('checked'));
});

function validateForm() {
    var posistion = ["startTL", "startTM", "startTR", "startLL", "startLM", "startLR"];
    if ($("#showed").prop('checked')) {
        return true;
    }
    if (!oneChecked(posistion)) {
        $("#startError").html("One start posistion must be checked");
        return false;
    }
    return true;
}

function oneChecked(names) {
    //console.log(names);
    for(var x = 0; x < names.length; x++) {
        //console.log(names[x]);
        //console.log($("[name=" + names[x] + "]").prop('checked'));
        if ($("[name=" + names[x] + "]").prop('checked')) {
            return true;
        }
    }
    return false;