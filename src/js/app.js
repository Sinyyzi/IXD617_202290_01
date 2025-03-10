import { checkSunsetAddForm, checkSunsetEditForm, checkUserEditForm, checkPasswordEditForm, checkSunsetTrackAddForm, checkSignupForm, checkSunsetDeleteForm, checkUserEditPhotoForm, checkSunsetTrackDeleteForm, checkListFilter, checkListSearchForm } from "./forms.js";
import { SunsetProfilePage, ChooseLocationPage, ListPage, RecentPage, UserEditPage, UserProfilePage, SunsetAddPage, SunsetEditPage, SunsetTrackAddPage, UserEditPhotoPage } from "./routes.js";
import { checkSigninForm, checkUserId } from "./signin.js";
import { checkUpload } from "./functions.js";

// Document Ready
$(() => {

    checkUserId();

    $(document)

    .on("pagecontainerbeforeshow", function(event, ui) {
        
        /* PAGE ROUTES */
        switch(ui.toPage[0].id) {
            case "recent-page": RecentPage(); break;
            case "list-page": ListPage(); break;

            case "user-profile-page": UserProfilePage(); break;
            case "user-edit-page": UserEditPage(); break;
            case "user-edit-photo-page": UserEditPhotoPage(); break;

            case "sunset-profile-page": SunsetProfilePage(); break;
            case "sunset-add-page": SunsetAddPage(); break;
            case "sunset-edit-page": SunsetEditPage(); break;

            case "choose-location-page": ChooseLocationPage(); break;

            case "add-sunset-track-page": SunsetTrackAddPage(); break;
        }
    })


    // EVENT DELEGATION
    .on("submit", "#signin-form", function(e) {
        e.preventDefault();
        checkSigninForm();
    })
    .on("submit", "#signup-form", function(e) {
        e.preventDefault();
        checkSignupForm();
    })
    .on("submit", "#user-edit-form", function(e) {
        e.preventDefault();
        checkUserEditForm();
    })
    .on("submit", "#sunset-edit-form", function(e) {
        e.preventDefault();
        checkSunsetEditForm();
    })




    .on("click", ".js-logout", function(e) {
        sessionStorage.removeItem("userId");
        sessionStorage.removeItem("sunsetId");
        sessionStorage.removeItem("sunsetTrackId");
        checkUserId();
    })


    .on("click", ".sunset-jump", function(e) {
        let id = $(this).data("id");

        sessionStorage.sunsetId = id;
    })
    .on("click", ".sunset-track-jump", function(e) {
        let id = $(this).data("id");

        sessionStorage.sunsetTrackId = id;
        console.log(id);
    })
    .on("click", ".js-sunset-delete", function(e) {
        checkSunsetDeleteForm();
    })
    .on("click", ".js-sunset-track-delete", function(e) {
        checkSunsetTrackDeleteForm();
    })
    .on("click", ".js-choose-sunset-spot-for-track", function(e) {
        $("#location-sunset-id").val(sessionStorage.sunsetId);
        $("#location-back").val(-2);
    })


    .on("click", ".js-submit-user-edit-form", function(e) {
        checkUserEditForm();
    })
    .on("click", ".js-submit-sunset-spot-add-form", function(e) {
        checkSunsetAddForm();
    })
    .on("click", ".js-submit-sunset-track-add-form", function(e) {
        checkSunsetTrackAddForm();
    })
    .on("click", ".js-submit-sunset-spot-edit-form", function(e) {
        checkSunsetEditForm();
    })
    .on("click", ".js-submit-password-edit-form", function(e) {
        checkPasswordEditForm();
        sessionStorage.removeItem("userId");
        sessionStorage.removeItem("sunsetId");
        sessionStorage.removeItem("sunsetTrackId");
        checkUserId();
    })
    .on("click", ".js-submit-user-edit-photo-form", function(e) {
        checkUserEditPhotoForm();
    })

    .on("change", ".imagepicker input", function(e) {
        checkUpload(this.files[0])
        .then((d) => {
            let filename = `uploads/${d.result}`;
            $(this).parent().prev().val(filename);
            $(this).parent().css({
                "background-image": `url('${filename}')`
            })
        })
    })

    .on("click", ".nav-link", function(e) {
        if (e.cancelable) e.preventDefault();
        let id = $(this).index();
        $(this).parent().next().children().eq(id)
            .addClass("active")
            .siblings().removeClass("active");
        $(this).addClass("active")
            .siblings().removeClass("active");
    })

    .on("submit", "#list-search-form", function(e) {
        e.preventDefault();
        let search = $(this).find("input").val();
        checkListSearchForm(search);
    })

    .on("click", "[data-filter]", function(e){
        let {filter,value} = $(this).data();
        if (value!=="") checkListFilter(filter,value);
        else ListPage();
    })


    // ACTIVATE TOOLS
    .on("click", "[data-activate]", function(e) {
        const target = $(this).data("activate");
        $(target).addClass("active");
    })
    .on("click", "[data-deactivate]", function(e) {
        const target = $(this).data("deactivate");
        $(target).removeClass("active");
    })
    .on("click", "[data-toggle]", function(e) {
        const target = $(this).data("toggle");
        $(target).toggleClass("active");
    })
    .on("click", "[data-activateone]", function(e) {
        const target = $(this).data("activateone");
        $(target).toggleClass("active")
            .siblings().removeClass("active");
    })
});