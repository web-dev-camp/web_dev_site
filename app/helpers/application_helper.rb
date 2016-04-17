module ApplicationHelper
  def delayed_image pic
    image_tag( "brands/1.jpg" ,  "data-src" => asset_path(pic) , class: 'swiper-lazy') +
    raw("<div class='swiper-lazy-preloader swiper-lazy-preloader-white'></div>")
  end
end
