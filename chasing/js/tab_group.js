$(()=>{
    $(".tabgroup .tab").on("click", function(e) {
        let id = $(this).index();

        $(this).addClass("active")
            .siblings().removeClass("active")

        $(this).closest(".tabgroup")
            .find(".content").eq(id).addClass("active")
            .siblings().removeClass("active")
    })

    $("#sunset-item").on("click", function(e) {
        location.href = "sunset_details.html";
    })

});