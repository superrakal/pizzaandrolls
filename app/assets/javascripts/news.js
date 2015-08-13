$(document).ready(function() {
    //Set the carousel options
    $('#quote-carousel').carousel({
        pause: true,
        interval: 4000,
    });
    $("form").submit(function(e){
        alert('a');
        e.preventDefault();
    });
});