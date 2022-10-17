$(()=>{
    // Source from Stack overlow
    var id = window.location.hash.substring(1);
    $.getJSON("data/sunsets.json", function(data){
        for (var i = 0, len = data.length; i < len; i++) {
            if(data[i].id == id) {
                $(".sunset-title h3").text(data[i].name);
                $(".sunset-image img").attr("src", data[i].img);
                //$("#location").text(data[i].location);
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