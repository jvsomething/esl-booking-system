$(document).ready(function(){
    $('.dp-date').datepicker({
        format: "MM d, yyyy",
        todayHighlight: true,
        zIndexOffset: 1200
    });

    if($('.dp-date').val() == ''){

        var today = new Date();
        $('#from').datepicker('setDate', today);
        $('#to').datepicker('setDate', today);
    }

    $('.change-candidate').change(function(){
        $('#search-form').submit();
    });
});