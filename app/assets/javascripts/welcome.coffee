$ ->
  $(document).ready ->
    $("#service .box-area").mouseenter ->
      $(this).addClass('animated pulse')
    $("#service .box-area").mouseleave ->
      $(this).removeClass('animated pulse')
    $("body").niceScroll()

$ ->
  $('#callback').click ->
    $('#callback-modal').modal()
    $("#phone").mask("+7 (999) 999-9999")
