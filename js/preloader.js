var preloader = document.querySelector("#preloader");
var body = document.querySelector("body");

if (preloader.style != 'none') {
    body.style.overflowY = 'hidden';
}

window.addEventListener('load', function () {
    body.style.overflowY = 'auto';
    preloader.style.display = 'none';
});