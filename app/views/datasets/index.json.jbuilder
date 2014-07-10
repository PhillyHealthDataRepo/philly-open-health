json.array!(@datasets) do |dataset|
  json.extract! dataset, :id, :title, :description, :createdate
  json.url dataset_url(dataset, format: :json)
end
