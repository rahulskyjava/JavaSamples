/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//        $(document).ready(function () {
//            $.ajax({type: 'POST', url: '/SpringMvcExample/authenticate', data: $('#myform').serialize(), success: function (response)
//                {
//                    if (response === "true") {
//                        $("#isauthenticated").html("Successful Authentication");
//                    }
//                    else {
//                        $("#isauthenticated").html("Wrong Username Or Password ");
//                    }
//                }});
//        });



$(document).ready(function () {
    $('#w-input-search').autocomplete({
        serviceUrl: '${pageContext.request.contextPath}/getTags',
        paramName: "tagName",
        delimiter: ",",
        transformResult: function (response) {
            return {
                suggestions: $.map($.parseJSON(response), function (item) {
                    return {value: item.tagName, data: item.id};
                })
            };
        }
    });
});

window.onload = function () {
    start();
}
function start() {
    var now = new Date();
    $('#date').html(now);
}

$(document).ready(function () {
    $('#w-input-search').autocomplete({
        serviceUrl: '/SpringMvcExample/getTags',
        paramName: "tagName",
        delimiter: ",",
        transformResult: function (response) {
            return {
                suggestions: $.map($.parseJSON(response), function (item) {
                    return {value: item.tagName, data: item.id};
                })
            };
        }
    });
});

