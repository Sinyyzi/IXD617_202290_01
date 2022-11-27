import { query } from "./functions.js";


export const checkSunsetAddForm = () => {
    let name = $("#sunset-add-name").val();
    let landscape = $("#sunset-add-landscape").val();
    let description = $("#sunset-add-description").val();
    let imageUrl = `https://via.placeholder.com/400/?text=${name}`;
    
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
            window.history.back();
        }
    })
}

export const checkSunsetEditForm = () => {
    let name = $("#sunset-edit-name").val();
    let landscape = $("#sunset-edit-landscape").val();
    let description = $("#sunset-edit-description").val();
    
    query({
        type: 'update_sunset_spot',
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
        } else {
            window.history.go(-1);
        }
    })
}
