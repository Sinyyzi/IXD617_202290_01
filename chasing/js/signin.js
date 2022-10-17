$(() => {

    checkUserId();

    $("#loginButton").on("click", function(e) {
        checkSigninForm();
        e.preventDefault();
    });

    // // EVENT DELEGATION
    // $(document)

    // // ACTIVATE TOOLS
    // .on("click", "[data-activate]", function(e) {
    //     const target = $(this).data("activate");
    //     $(target).addClass("active");
    // })
    // .on("click", "[data-deactivate]", function(e) {
    //     const target = $(this).data("deactivate");
    //     $(target).removeClass("active");
    // })
    // .on("click", "[data-toggle]", function(e) {
    //     const target = $(this).data("toggle");
    //     $(target).toggleClass("active");
    // })
    // .on("click", "[data-activateone]", function(e) {
    //     const target = $(this).data("activateone");
    //     $(target).toggleClass("active")
    //         .siblings().removeClass("active");
    // })
});

const checkSigninForm = () => {
    const userval = $("#signin-username").val();
    const passval = $("#signin-password").val();

    if (userval === "user" && passval === "pass") {
        // Logged In
        console.log("Success");
        sessionStorage.userId = 3;
    } else {
        // Not Logged In
        console.log("Failure");
        sessionStorage.removeItem("userId");

        // $(".warning").html("");
        // setTimeout(()=>{$(".warning").html("");},3000)
    }

    checkUserId();
}

const checkUserId = () => {
    const pages = ["login.html", "signup.html"];
    if (sessionStorage.userId === undefined) {
        // not logged in
        if (!pages.some(p => location.href.indexOf(p) > -1)) {
            location.href = "login.html";
        }
    } else {
        // logged in
        if (pages.some(p => location.href.indexOf(p) > -1)) {
            location.href = "content.html";
        }
    }
}