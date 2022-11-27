import { query } from "./functions.js"
import { makeMap, makeMarkers } from "./maps.js";
import { makeSunsetMapDescription, makeSunsetList, makeSunsetProfileDescription, makeEditSunsetSpotForm, makeUserProfilePage, makeEditUserForm} from "./parts.js";


export const RecentPage = async() => {
    let {result:sunset_locations} = await query({
        type:"recent_sunset_locations",
        params:[sessionStorage.userId]
    });
    console.log(sunset_locations);

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
            console.log(sunset)

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
}

export const ListPage = async() => {

    let {result:sunset} = await query({
        type:"sunset_spots_by_user_id",
        params:[sessionStorage.userId]
    });

    console.log(sunset)

    $("#list-page .sunsetlist").html(makeSunsetList(sunset))
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
    console.log(encodedUrl);
    $(".sunset-profile-top").css({"background-image":`url(${encodedUrl})`});
    $("#sunset-profile-page h1").html(sunset.name);
    $("#sunset-profile-page .section-description").html(makeSunsetProfileDescription(sunset));

    let {result:spots} = await query({
        type:"sunset_tracks_by_spot_id",
        params:[sessionStorage.sunsetId]
    });
    console.log(spots);

    let map_el = await makeMap("#sunset-profile-page .map");
    makeMarkers(map_el,spots);
}


export const ChooseLocationPage = async() => {
    let map_el = await makeMap("#choose-location-page .map");
    makeMarkers(map_el,[]);
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
}