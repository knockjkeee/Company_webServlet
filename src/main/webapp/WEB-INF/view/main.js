$(document).ready(function () {

    // $('#btn').on('click', function(){
    //
    //     $('#demo').load('http://jsbin.com/ivinuw/1/');
    // });

    $('#list').on('change', function () {
        var check = $(this).val();
        var year = $('#year').val();
        $.ajax({
            type: 'post',
            url:'OptionalServlet',
            data: {optional:check, year:year},
            success: function (result) {
                $('#demo').html(result)
            }
        });

        // if (check == "gaz") {
        //     $.ajax({
        //         type: 'post',
        //         url: 'GazServlet',
        //         data: {gaz: check},
        //         success: function (result) {
        //             $('#demo').html(result)
        //         }
        //     });
        // } else if (check == "oil") {
        // $.ajax({
        //         type: 'post',
        //         url: 'OilServlet',
        //         data: {oil: check},
        //         success: function (result) {
        //             $('#demo').html(result)
        //
        //         }
        //     });
        // } else if (check == "electric") {
        //     $.ajax({
        //         type: 'post',
        //         url: 'ElectricServlet',
        //         data: {electric: check},
        //         success: function (result) {
        //             $('#demo').html(result);
        //         }
        //     });
        // }else {
        //
        // }
    });

    $('#year').on('change', function () {
        var check = $(this).val();
        var ind = $('#list').val();
        $.ajax({
            type: 'post',
            url: 'YearServlet',
            data: {year: check, ind:ind},
            success: function (result) {

                $('#demo').html(result)
                // $('#demo').load('index.jsp')

            }
        });
    });


    $('#btn').on('click', function () {
        // alert('asd');
        var search = $('#search').val()
        $.ajax({
            type: 'post',
            data: {search: search},
            url: 'SearchServlet',
            success: function (result) {
                // $('#list').selectedIndex(1)
                // window.location.reload();

                $('#year').val($('#null2:first').val());
                $('#list').val($('#null:first').val());
                $('#demo').html(result)

            }
        });
    });

// $('#companyName').on('click', function () {
//
//     var companyInformation = $('#companyName').val();
//     alert(companyInformation);
//
// });

});
