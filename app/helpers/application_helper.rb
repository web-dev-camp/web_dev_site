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

  def pie percent
    "<svg viewBox='0 0 32 32' class='pie'>
      <circle r='16' cx='16' cy='16' style= 'stroke-dasharray: #{percent} 100;'/>
    </svg>".html_safe
  end
end
