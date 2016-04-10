_layersliderInit = ->
  if jQuery().layerSlider and jQuery('div.layerslider').length > 0
    jQuery('div.layerslider').each ->
      jQuery(this).layerSlider layer_options
      return
  return

jQuery(document).ready ->
  if jQuery('.layerslider').length > 0
    _layersliderInit()
  if jQuery('.swiper-container').length > 0
    new Swiper('.swiper-container', swiper_options)
  return

jQuery(document).ready ->
  # fadeIn needs to be an available animate class, ie included
  jQuery('.js-rotating').Morphext({separator: ";" , animation: "fadeIn" , spedd: 3000})
  return
