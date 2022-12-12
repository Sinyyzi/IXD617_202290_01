import { query } from "./functions.js"
import { makeMap, makeMarkers, makeMarkersForTrack } from "./maps.js";
import { makeSunsetMapDescription, makeSunsetList, makeSunsetProfileDescription, makeEditSunsetSpotForm, makeUserProfilePage, makeEditUserForm, makeAddSunsetTrackForm, makeSunsetTrackMapDescription, makeFilterList } from "./parts.js";


export const RecentPage = async() => {
    let {result:sunset_locations} = await query({
        type:"recent_sunset_locations",
        params:[sessionStorage.userId]
    });

    let valid_sunset = sunset_locations.reduce((r,o)=>{
        o.icon = o.img;
        if (o.lat && o.lng) r.push(o);
        return r;
    },[])

    let map_el = await makeMap("#recent-page .map");
    makeMarkers(map_el,valid_sunset);

    map_el.data("markers").forEach((m,i)=>{
        // console.log(m)
        m.addListener("click",function(e){
            // console.log(e)
            let sunset = valid_sunset[i];

            // Just Navigate
            // sessionStorage.animalId = animal.animal_id;
            // $.mobile.navigate("#animal-profile-page")

            // Open Google InfoWindow
            let {map,infoWindow} = map_el.data();
            infoWindow.open(map, m);
            infoWindow.setContent(makeSunsetMapDescription(sunset));

            // Top modal
            // $("#map-recent-modal")
            //     .addClass("active")
            //     .find(".modal-body")
            //     .html(makeSunsetMapDescription(sunset))
        })
    });

    if (sunset_locations.length == 0) {
        $(".snackbar").addClass("show");

        // After 3 seconds, remove the show class from DIV
        setTimeout(function(){ $(".snackbar").removeClass("show"); }, 7000);
    }
}

export const ListPage = async() => {

    let {result:sunsets} = await query({
        type:"sunset_spots_by_user_id",
        params:[sessionStorage.userId]
    });

    if (sunsets.length == 0) {
        $("#list-page .emptylist").show();
        $("#list-page .sunsetlist").hide();

        // header visibilities
        $("#list-page-empty-header").show();
        $("#list-page-search-header").hide();
        $("#list-page .filter-bar").hide();
    } else {
        $("#list-page .sunsetlist").html(makeSunsetList(sunsets))
        $("#list-page .filter-bar").html(makeFilterList(sunsets))
        $("#list-page .sunsetlist").show();
        $("#list-page .emptylist").hide();
        
        // header visibilities
        $("#list-page-empty-header").hide();
        $("#list-page-search-header").show();
        $("#list-page .filter-bar").show();
    }
}

export const UserProfilePage = async() => {
    let {result:users} = await query({
        type:"user_by_id",
        params:[sessionStorage.userId]
    });
    let [user] = users;

    $("#user-profile-page .body").html(makeUserProfilePage(user))
}

export const UserEditPage = async() => {
    let {result:users} = await query({
        type:"user_by_id",
        params:[sessionStorage.userId]
    });
    let [user] = users;

    $("#user-edit-page .body").html(makeEditUserForm(user));
}

export const SunsetProfilePage = async() => {
    let {result:sunsets} = await query({
        type:"sunset_by_id",
        params:[sessionStorage.sunsetId]
    });
    let [sunset] = sunsets;

    let encodedUrl = sunset.img.replace(/ /g,"%20");
    $(".sunset-profile-top").css({"background-image":`url(${encodedUrl})`});
    $("#sunset-profile-page h1").html(sunset.name);
    $("#sunset-profile-page .section-description").html(makeSunsetProfileDescription(sunset));

    let {result:spots} = await query({
        type:"sunset_tracks_by_spot_id",
        params:[sessionStorage.sunsetId]
    });

    let map_el = await makeMap("#sunset-profile-page .map");
    makeMarkersForTrack(map_el,spots);
    map_el.data("markers").forEach((m,i)=>{
        // console.log(m)
        m.addListener("click",function(e){
            // console.log(e)
            let spot = spots[i];

            // Just Navigate
            // sessionStorage.animalId = animal.animal_id;
            // $.mobile.navigate("#animal-profile-page")

            // Open Google InfoWindow
            let {map,infoWindow} = map_el.data();
            infoWindow.open(map, m);
            infoWindow.setContent(makeSunsetTrackMapDescription(spot));

            // Top modal
            // $("#map-recent-modal")
            //     .addClass("active")
            //     .find(".modal-body")
            //     .html(makeSunsetMapDescription(sunset))
        })
    });
}


export const ChooseLocationPage = async() => {
    let map_el = await makeMap("#choose-location-page .map");
    makeMarkers(map_el,[]);
    map_el.data("map").addListener("click",function(e){
        $("#location-lat").val(e.latLng.lat());
        $("#location-lng").val(e.latLng.lng());
        makeMarkers(map_el,[e.latLng]);
    })
}


export const SunsetAddPage = async() => {
    $("#sunset-add-page .body").html(makeEditSunsetSpotForm({
        sunset:{
            name:'',
            landscape:'',
            description:'',
        },
        namespace:'sunset-add'
    }));
    $("#sunset-edit-photo-page .body").css({
        "background-image": `url('images/addphoto.png')`
    });
}

export const SunsetEditPage = async() => {
    let {result:sunsets} = await query({
        type:"sunset_by_id",
        params:[sessionStorage.sunsetId]
    });
    let [sunset] = sunsets;

    $("#sunset-edit-page .body").html(makeEditSunsetSpotForm({
        sunset,
        namespace:'sunset-edit'
    }));
    $("#sunset-edit-photo-page .body").css({
        "background-image": `url('${sunset.img}')`
    });
}

export const SunsetTrackAddPage = async() => {
    $("#add-sunset-track-page .body").html(makeAddSunsetTrackForm({
        namespace:'sunset-track-add'
    }));
    $("#sunset-track-edit-photo-page .body").css({
        "background-image": `url('images/addphoto.png')`
    });
}

export const UserEditPhotoPage = async() => {
    let {result:users} = await query({
        type:"user_by_id",
        params:[sessionStorage.userId]
    });
    let [user] = users;

    $("#user-edit-photo-page .body").css({
        "background-image": `url('${user.img}')`
    });
}