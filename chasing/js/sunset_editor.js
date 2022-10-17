$(()=>{
    var id = window.location.hash.substring(1);
    if(id != "") {
        $.getJSON("data/sunsets.json", function(data){
            for (var i = 0, len = data.length; i < len; i++) {
                if(data[i].id == id) {
                    $("#sunset-editor-name").val(data[i].name);
                    $(".sunset-image img").attr("src", data[i].img);
                    $("#sunset-editor-location").val(data[i].location);
                    $("#sunset-editor-best-time").val(data[i].best_time);
                    $("#sunset-editor-notes").val(data[i].note);
                }
            }
        });
    }

    $(".sunset-editor-cancel-btn").on("click", function(e) {
        history.back();
    });

    if (id == "") {
        $(".sunset-editor-title h3").text("Add new sunset");        
    } else {
        $(".sunset-editor-title h3").text("Edit sunset");        
    }
});