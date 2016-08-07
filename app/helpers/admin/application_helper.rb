module Admin
  module ApplicationHelper

    def format_text_field data
      return "" unless data
      raw( data.to_s.gsub("\n" , "<br>"))
    end

  end
end
