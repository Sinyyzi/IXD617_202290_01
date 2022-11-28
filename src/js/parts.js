import { templater } from "./functions.js";

export const makeSunsetMapDescription = ({name,landscape,img}) => {
    return `<div class="sunset-map-description">
        <div class="sunset-map-image">
            <img src="${img}" />
        </div>
        <div class="sunset-map-body">
            <h1>${name}</h1>
            <div>${landscape}</div>
        </div>
    </div>`;
}

export const makeSunsetList = templater(({id,name,landscape,date_create,img})=>`
<a class="sunsetlist-item sunset-jump" href="#sunset-profile-page" data-id="${id}">
    <div class="sunsetlist-image"><img src="${img}"></div>
    <div class="sunsetlist-body">
        <div class="sunsetlist-name">${name}</div>
        <div class="sunsetlist-landscape">${landscape}</div>
        <div class="sunsetlist-time">${date_create}</div>
    </div>
</a>
`)

export const makeSunsetProfileDescription = ({name,landscape,description})=>`
<h2>${name}</h2>
<div>${landscape}</div>
<div>${description}</div>
`

const FormControlInput = ({namespace,name,displayname,type,placeholder,value}) => {
    return `<div class="form-control">
        <label class="form-label" for="${namespace}-${name}">${displayname}</label>
        <input class="form-input" type="${type}" id="${namespace}-${name}" data-role="none" placeholder="${placeholder}" value="${value}">
    </div>`
}
const FormControlTextarea = ({namespace,name,displayname,placeholder,value}) => {
    return `<div class="form-control">
        <label class="form-label" for="${namespace}-${name}">${displayname}</label>
        <textarea class="form-input" id="${namespace}-${name}" data-role="none" placeholder="${placeholder}">${value}</textarea>
    </div>`
}

export const makeEditSunsetSpotForm = ({sunset,namespace}) => {
    return `
    ${FormControlInput({
        namespace,
        name: "name",
        displayname: "Name",
        type: "text",
        placeholder: "Type a Name",
        value: sunset.name
    })}
    ${FormControlInput({
        namespace,
        name: "landscape",
        displayname: "Landscape",
        type: "text",
        placeholder: "Type a Landscape",
        value: sunset.landscape
    })}
    ${FormControlTextarea({
        namespace,
        name: "description",
        displayname: "Description",
        placeholder: "Type a Description",
        value: sunset.description
    })}
    `;
}

export const makeUserProfilePage = ({name,email,username,img})=>`
<div>
    <div class="user-profile-image"><img src="${img}"></div>
    <div class="user-profile-body">
        <div class="user-profile-name">${name}</div>
        <div class="user-profile-username">@${username}</div>
        <div class="user-profile-email">${email}</div>
    </div>
</div>
`

export const makeEditUserForm = ({name,username,email}) => {
    
    return `<div class="form-control">
        <label class="form-label" for="user-edit-username">Username</label>
        <input class="form-input" type="text" id="user-edit-username" data-role="none" placeholder="Type your Username" value="${username}">
    </div>
    <div class="form-control">
        <label class="form-label" for="user-edit-name">Name</label>
        <input class="form-input" type="text" id="user-edit-name" data-role="none" placeholder="Type your Name" value="${name}">
    </div>
    <div class="form-control">
        <label class="form-label" for="user-edit-email">Email</label>
        <input class="form-input" type="text" id="user-edit-email" data-role="none" placeholder="Type your Email" value="${email}">
    </div>`
}

export const makeAddSunsetTrackForm = ({namespace}) => {
    return `
    ${FormControlInput({
        namespace,
        name: "weather",
        displayname: "Weather",
        type: "text",
        placeholder: "Type a Weather",
        value: ''
    })}
    ${FormControlInput({
        namespace,
        name: "sunset_time",
        displayname: "Sunset Time",
        type: "datetime-local",
        placeholder: "Type a Sunset Time",
        value: ''
    })}
    ${FormControlTextarea({
        namespace,
        name: "description",
        displayname: "Description",
        placeholder: "Type a Description",
        value: ''
    })}
    `;
}