$(document).ready(function(){
    if (!$('#coopTote1').prop('checked')) {
        $('#coopStep').prop('disabled', true);
    }
});

$('#coopTote1').click(function(){
    $('#coopStep').prop('disabled', !$('#coopTote1').prop('checked'));
});