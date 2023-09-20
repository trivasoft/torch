$(() => {

    // ===== Menu open start =====
    $(document).on("click", ".burger-menu", function(){
        let menu = $(".menu");

        $(menu).addClass("open");
    })
    // ===== Menu open end =====


     // ===== Menu close start =====
     $(document).on("click", ".close", function(){
        let menu = $(".menu");

        $(menu).removeClass("open");
    })
    // ===== Menu close end =====

})






