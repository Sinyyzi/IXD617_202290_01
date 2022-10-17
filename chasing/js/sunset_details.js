$(()=>{
    // Source from Stack overlow
    var id = window.location.hash.substring(1);
    $.getJSON("data/sunsets.json", function(data){
        for (var i = 0, len = data.length; i < len; i++) {
            if(data[i].id == id) {
                $(".sunset-title h3").text(data[i].name);
                $(".sunset-image img").attr("src", data[i].img);
                $("#sunset-detail-location h5").text(data[i].location);
                $("#sunset-detail-best-time h5").text(data[i].best_time);
                $("#sunset-detail-note h5").text(data[i].note);
            }
        }
    });

    $("#sunset-details-edit").on("click", function(e) {
       editSunsetDetails(id);
    });
});

function editSunsetDetails(sunsetId) {
    location.href = "sunset_editor.html" + '#' + sunsetId; 
}