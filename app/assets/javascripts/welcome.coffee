$ ->
  $(document).ready ->
    $('#move-modal').modal()
    $("#service .box-area").mouseenter ->
      $(this).addClass('animated pulse')
    $("#service .box-area").mouseleave ->
      $(this).removeClass('animated pulse')
    $("body").niceScroll()
    $(".items-wrapper .description").niceScroll()

$ ->
  $('#callback').click ->
    $('#callback-modal').modal()
    $("#phone").mask("+7 (999) 999-9999")
