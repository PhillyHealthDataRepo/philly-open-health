json.array!(@sources) do |source|
  json.extract! source, :id, :name, :description, :homepageurl
  json.url source_url(source, format: :json)
end
