module ApplicationHelper
  def delayed_image pic
    image_tag( "brands/1.jpg" ,  "data-src" => asset_path(pic) , class: 'swiper-lazy') +
    raw("<div class='swiper-lazy-preloader swiper-lazy-preloader-white'></div>")
  end
  def brr txt
    txt
  end

  # define a bunch of defaults for the best_in_place call
  def resume_in_place field , txt  , attributes = {}
    br = proc {|txtt| raw(txtt.to_s.gsub("\n" , "<br>")) }
    defaults = { :url => resume_path , place_holder: txt , display_with: br}
    unless [:street , :city , :country].include? field
      defaults.merge! ok_button: "Edit", ok_button_class: "btn btn-success" ,
                      cancel_button: "Cancel" , cancel_button_class:  "btn btn-warning",
                      inner_class:  "form-control" , as: :textarea ,
                      sanitize: false , html_attrs: {rows: 10}
    end
    attributes.reverse_merge! defaults
    best_in_place(@resume , field , attributes)
  end

  def social_link href , kind , &block
    link_to(href , {class: "social-icon social-icon-sm social-#{kind}" , target: :blank } , &block) 
  end
end
