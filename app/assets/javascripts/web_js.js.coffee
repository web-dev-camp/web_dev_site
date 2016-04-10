_layersliderInit = ->
  if jQuery().layerSlider and jQuery('div.layerslider').length > 0
    jQuery('div.layerslider').each ->
      jQuery(this).layerSlider layer_options
      return
  return

jQuery(document).ready ->
  if jQuery('.layerslider').length > 0
    _layersliderInit()
  swiper = new Swiper('.swiper-container', swiper_options)
  return
