json.array!(@courses) do |course|
  json.extract! course, :id, :name, :extra, :start
  json.url course_url(course, format: :json)
end
