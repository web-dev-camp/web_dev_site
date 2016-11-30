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

  def social_link kind , href ,  &block
    classes = "social-icon social-icon-border social-#{kind} pull-left tipit"
    options = {class:  classes , :title => kind.capitalize , target: :blank }
    link_to(href , options , &block)
  end

  def ext_link(name = nil, options = nil, html_options = nil, &block)
    target_blank = {target: "_blank"}
    if block_given?
      options ||= {}
      options = options.merge(target_blank)
    else
      html_options ||= {}
      html_options = html_options.merge(target_blank)
    end
    link_to(name, options, html_options, &block)
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
