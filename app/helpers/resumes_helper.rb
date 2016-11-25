module ResumesHelper




  def percent
    fields = [:school, :uni, :internship, :work, :projects, :tech_skills, :soft_skills,
              :interests, :motivation, :finance, :other, :street, :city, :country]
    total = fields.length 
    filled = fields.collect{|f| @resume.send(f).blank? ? 0 : 1 }.sum * 100
    "#{filled/total}%"
  end

  # define a bunch of defaults for the best_in_place call
  def resume_in_place field , attributes = {}
    txt = I18n.t("resumes.#{field}")
    button = @resume.send(field).blank? ? "Ok" : "Edit"
    br = proc {|txtt| raw(txtt.to_s.gsub("\n" , "<br>")) }
    defaults = { :url => resume_path , place_holder: txt , display_with: br}
    unless [:street , :city , :country].include? field
      defaults.merge! ok_button: button,  ok_button_class: "btn btn-success" ,
                      cancel_button: "Cancel" , cancel_button_class:  "btn btn-warning",
                      inner_class:  "form-control" , as: :textarea ,
                      sanitize: false , html_attrs: {rows: 10}
    end
    attributes.reverse_merge! defaults
    best_in_place(@resume , field , attributes)
  end

end
