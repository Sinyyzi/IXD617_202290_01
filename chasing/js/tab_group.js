$(()=>{
    $.getJSON("data/sunsets.json", function(data){
        for (var i = 0, len = data.length; i < len; i++) {
            $('.gallery').append(
            `
                <div class="responsive">
                    <div class="sunset-item" onclick="fetchDetails('${data[i].id}')">
                        <img src=${data[i].img} width="600" height="400">
                        <div class="sunset-name">${data[i].name}</div>
                    </div>
                </div>
            `
            );
        }
    });
    
    $(".tabgroup .tab").on("click", function(e) {
        let id = $(this).index();

        $(this).addClass("active")
            .siblings().removeClass("active")

        $(this).closest(".tabgroup")
            .find(".content").eq(id).addClass("active")
            .siblings().removeClass("active")

        let text = $(this).text();
        $(".tabheader h3").html(text);
    })

    $.mobile.loading().hide();
});

function fetchDetails(sunsetId) {
    location.href = "sunset_details.html" + '#' + sunsetId; 
}