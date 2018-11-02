$(document).ready(function () {

    // $('#btn').on('click', function(){
    //
    //     $('#demo').load('http://jsbin.com/ivinuw/1/');
    // });

    $('#list').on('change', function () {
        var check = $(this).val();
        if (check == "gaz") {
            $.ajax({
                type: 'post',
                url: 'GazServlet',
                data: {gaz: check},
                success: function (result) {
                    $('#demo').html(result)
                }
            });
        } else if (check == "oil") {
        $.ajax({
                type: 'post',
                url: 'OilServlet',
                data: {oil: check},
                success: function (result) {
                    $('#demo').html(result)

                }
            });
        } else if (check == "electric") {
            $.ajax({
                type: 'post',
                url: 'ElectricServlet',
                data: {electric: check},
                success: function (result) {
                    $('#demo').html(result);
                }
            });
        }else {

        }
    });

    $('#btn').on('click', function () {
        // alert('asd');
        var search = $('#search').val()
        $.ajax({
            type: 'post',
            data: {search: search},
            url: 'SearchServlet',
            success: function (result) {
                $('#demo').html(result)
            }
        });
    });

// $('#companyName').on('click', function () {
//
//     var company = $('#companyName').val();
//     alert(company);
//
// });

})
;