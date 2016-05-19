function setUp(){
    document.getElementById("inrikesmenu").style.display = "none";
    document.getElementById("utrikesmenu").style.display = "none";
    document.getElementById("lokaltmenu").style.display = "none";
    document.getElementById("kulturmenu").style.display = "none";
    document.getElementById("sportmenu").style.display = "none";
    document.getElementById("ekonomimenu").style.display = "none";
}
function showHideInr() {
    var visa = document.getElementById("inrikesmenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}
function showHideUtr() {
    var visa = document.getElementById("utrikesmenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}
function showHideLok() {
    var visa = document.getElementById("lokaltmenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}
function showHideKul() {
    var visa = document.getElementById("kulturmenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}
function showHideSpo() {
    var visa = document.getElementById("sportmenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}
function showHideEko() {
    var visa = document.getElementById("ekonomimenu");
    if(visa.style.display == "none"){
        visa.style.display = "block";
    }else if(visa.style.display == "block"){
        visa.style.display = "none";
    }
}