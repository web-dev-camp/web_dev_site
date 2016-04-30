
jQuery(document).ready ->
  if jQuery('.swiper-container').length > 0
    default_options = {
      pagination: '.swiper-pagination' ,
      paginationClickable: true ,
      nextButton: '.swiper-button-next' ,
      prevButton: '.swiper-button-prev' ,
      centeredSlides: true,
      autoplay: 8500,
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

jQuery(document).ready ->
  # fadeIn needs to be an available animate class, ie included
  jQuery('.js-rotating').Morphext({separator: ";" , animation: "fadeIn" , speed: 6000})
  return

$(document).ready ->
  ### Activating Best In Place ###
  jQuery('.best_in_place').best_in_place()
  return

$(document).ready ->
  ### fading alerts ###
  jQuery('.alert').delay(5000).fadeOut 'slow'
  return
