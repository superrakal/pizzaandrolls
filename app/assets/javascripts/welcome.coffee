$ ->
  $('#move-modal').modal()
  $("body").niceScroll()

$ ->
  $('#callback').click ->
    $('#callback-modal').modal()
    $("#phone").mask("+7 (999) 999-9999")
