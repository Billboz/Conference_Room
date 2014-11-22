json.array!(@campuses) do |campus|
  json.extract! campus, :id
  json.url campus_url(campus, format: :json)
end
