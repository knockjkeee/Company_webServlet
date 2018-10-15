$(document).ready(function () {

    // $('#btn').on('click', function(){
    //
    //     $('#demo').load('http://jsbin.com/ivinuw/1/');
    // });

    $('#list').on('change', function () {
        var t = $(this).val();
        if (t == "1") {
            // alert('asd');
            $.ajax({
                type: 'post',
                url: 'IndustryServlet',
                success: function (result) {
                    $('#demo').html(result)
                }
            });
        } else {
            $('#demo').load('./gas.jsp');
        }
    });

});