
$(document).ready ->
  ### Activating Best In Place ###
  jQuery('.best_in_place').best_in_place()
  return

$(document).ready ->
  bar = jQuery("#progress")
  if(bar.length > 0)
    $.ajax(url: "/resume/progress").done (html) ->
      bar.html html

$(document).ready ->
  $('.best_in_place').bind 'ajax:success', ->
    @innerHTML = @innerHTML.replace(/\n/g, '<br/>')
    $.ajax(url: "/resume/progress").done (html) ->
      $("#progress").html html
    return

$(document).ready ->
  jQuery('.flash').delay(5000).fadeOut 'slow'
  return

$(document).ready ->
  content = -> $(this).find('.content')
  $('.tipster').each ->
    $(this).tooltip( title: content)
  return

$(document).ready ->
  allPanels = $('#faq_toggle > .toggle-content').hide()
  $('#faq_toggle > label').click ->
    n = $(this).next()
    return if n.is(':visible')
    allPanels.slideUp()
    n.slideDown()
    false
  return
