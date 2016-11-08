module ApplicationHelper
  def title! str
    @title = str
  end
  def description! str
    @description = str
  end
  def description
    @description || @title
  end
  def delayed_image pic
    image_tag( "brands/1.jpg" ,  "data-src" => asset_path(pic) , class: 'swiper-lazy') +
    raw("<div class='swiper-lazy-preloader swiper-lazy-preloader-white'></div>")
  end

  def ssl_hash
    Rails.env.production? ? {protocol: :https } : {}
  end
  def sign_out_link opt = {}
    link_to "Sign out" , destroy_user_session_url(ssl_hash) , opt
  end

  def secure_registration
    registration_url(:user , ssl_hash )
  end

  def social_link href , kind , &block
    link_to(href , {class: "social-icon social-icon-sm social-#{kind}" , target: :blank } , &block)
  end

  def faq_sections
    ["course","application","payment","stay","career"]
  end
end
