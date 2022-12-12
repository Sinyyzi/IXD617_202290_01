import { query } from "./functions.js";
import { makeSunsetList } from "./parts.js";


export const checkSunsetAddForm = () => {
    let name = $("#sunset-add-name").val();
    let landscape = $("#sunset-add-landscape").val();
    let description = $("#sunset-add-description").val();
    let imageUrl = $("#sunset-add-photo-image").val();
    if (imageUrl == null || imageUrl == '') {
        imageUrl = `https://via.placeholder.com/400/?text=${name}`;
    }

    query({
        type: 'insert_sunset_spot',
        params: [
            sessionStorage.userId,
            name,
            landscape,
            description,
            imageUrl
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            sessionStorage.sunsetId = data.id;
            $.mobile.navigate("#sunset-profile-page");
        }
    })
}

export const checkSunsetEditForm = () => {
    let name = $("#sunset-edit-name").val();
    let landscape = $("#sunset-edit-landscape").val();
    let description = $("#sunset-edit-description").val();
    let img = $("#sunset-edit-photo-image").val();
    
    if (img != null && img != '') {
        query({
            type: 'update_sunset_spot',
            params: [
                name,
                landscape,
                description,
                img,
                sessionStorage.sunsetId
            ]
        }).then((data)=>{
            if (data.error) {
                throw(data.error);
            } else {
                window.history.back();
            }
        })
    } else {
        query({
            type: 'update_sunset_spot_without_img',
            params: [
                name,
                landscape,
                description,
                sessionStorage.sunsetId
            ]
        }).then((data)=>{
            if (data.error) {
                throw(data.error);
            } else {
                window.history.back();
            }
        })
    }
    
}

export const checkUserEditForm = () => {
    let name = $("#user-edit-name").val();
    let username = $("#user-edit-username").val();
    let email = $("#user-edit-email").val();

    query({
        type: 'update_user',
        params: [
            name,
            username,
            email,
            sessionStorage.userId
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            window.history.back();
        }
    })
}

export const checkPasswordEditForm = () => {
    let password = $("#password-edit-password").val();
    let confirm = $("#password-edit-confirm").val();

    if (password !== confirm) {
        // tell user to try again
        return;
    }

    query({
        type: 'update_password',
        params: [
            password,
            sessionStorage.userId
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        }
    })
}

export const checkSunsetTrackAddForm = () => {
    let sunset_time = $("#sunset-track-add-sunset_time").val();
    let weather = $("#sunset-track-add-weather").val();
    let description = $("#sunset-track-add-description").val();
    let lat = $("#location-lat").val();
    let lng = $("#location-lng").val();
    let img = $("#sunset-track-add-photo-image").val();

    query({
        type: 'insert_sunset_track',
        params: [
            sessionStorage.sunsetId,
            lat,
            lng,
            description,
            weather,
            sunset_time,
            img
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            $.mobile.navigate("#sunset-profile-page");
        }
    })
}

export const checkSignupForm = () => {
    let name = $("#signup-name").val();
    let username = $("#signup-username").val();
    let email = $("#signup-email").val();
    let password = $("#signup-password").val();
    let confirm = $("#signup-confirm").val();
    let imageUrl = `https://via.placeholder.com/400/?text=${name}`;
    
    if (password !== confirm) {
        // tell user to try again
        throw("password failed, please try again");
        return;
    }

    query({
        type: 'insert_user',
        params: [
            name,
            username,
            email,
            password,
            imageUrl
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
            // We should show how they failed to them
        } else {
            sessionStorage.userId = data.id;
            $.mobile.navigate("#list-page");
        }
    })
}

export const checkSunsetDeleteForm = () => {
    console.log(sessionStorage.sunsetId);
    query({
        type:"delete_sunset",
        params:[sessionStorage.sunsetId]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            $.mobile.navigate("#list-page");
        }
    })
}

export const checkSunsetTrackDeleteForm = () => {
    console.log(sessionStorage.sunsetTrackId);
    query({
        type:"delete_sunset_track",
        params:[sessionStorage.sunsetTrackId]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            window.history.go(0);
        }
    })
}

export const checkUserEditPhotoForm = () => {
    let photo = $("#user-edit-photo-image").val();

    query({
        type: 'update_user_photo',
        params: [
            photo,
            sessionStorage.userId
        ]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            window.history.go(-1);
        }
    })
}


export const checkListSearchForm = (search) => {
    query({
        type:"search_sunsets",
        params:[`%${search}%`,sessionStorage.userId]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            let {result} = data;
            $("#list-page .sunsetlist").html(makeSunsetList(result))
        }
    })
}
export const checkListFilter = (filter,value) => {
    query({
        type:"filter_sunsets",
        params:[filter,value,sessionStorage.userId]
    }).then((data)=>{
        if (data.error) {
            throw(data.error);
        } else {
            let {result} = data;
            $("#list-page .sunsetlist").html(makeSunsetList(result));
        }
    })
}