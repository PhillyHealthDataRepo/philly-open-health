json.array!(@documents) do |document|
  json.extract! document, :id, :name, :source, :publicationdate, :tags
  json.url document_url(document, format: :json)
end
