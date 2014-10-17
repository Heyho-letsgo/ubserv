json.array!(@chapitres) do |chapitre|
  json.extract! chapitre, :id, :titre
  json.url chapitre_url(chapitre, format: :json)
end
