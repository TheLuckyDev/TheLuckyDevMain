$(document).ready(function () {
    console.log("document ready");
    $("#listSearch").on("keyup", function () {
        console.log("click");
        var value = $(this).val().toLowerCase();
        $("#searchContainer > *").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});