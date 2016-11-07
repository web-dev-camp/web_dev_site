
jQuery(document).ready ->
  if jQuery('.swiper-container').length > 0
    default_options = {
      pagination: '.swiper-pagination' ,
      paginationClickable: true ,
      nextButton: '.swiper-button-next' ,
      prevButton: '.swiper-button-prev' ,
      centeredSlides: true,
      autoplay: 6500,
      autoplayDisableOnInteraction: false,
      keyboardControl: true,
      speed: 800,
      preloadImages: false,
      lazyLoading: true,
      loop: true,
      lazyLoadingInPrevNext: true,
      lazyLoadingOnTransitionStart: true,
      spaceBetween: 30
    }
    new Swiper('.swiper-container', $.extend({}, default_options, swiper_options) )
  return

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
  ### fading alerts ###
  jQuery('.flash').delay(5000).fadeOut 'slow'
  return

$(document).ready ->
  $('.tipster').each ->
    content = $(this).find('.content').detach().show()
    $(this).tooltipster content: content , maxWidth: 300 ,  theme: 'tooltipster-shadow'
  return

$(document).ready ->
  _headerHeight = jQuery("#header").outerHeight()
  _screenHeight = jQuery(window).height() - _headerHeight
  jQuery('.fullheight').height _screenHeight
  return
