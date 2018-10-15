$(document).ready(function(){

    $('#lis').on('onchange', function(){
        var temp = $(this).val();
        if (temp == '1') {
            alert("sad")
        }
        $('#demo').load('http://jsbin.com/ivinuw/1/');
    });

});