json.array!(@paragraphes) do |paragraphe|
  json.extract! paragraphe, :id, :corps
  json.url paragraphe_url(paragraphe, format: :json)
end
