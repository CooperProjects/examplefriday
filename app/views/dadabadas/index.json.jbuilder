json.array!(@dadabadas) do |dadabada|
  json.extract! dadabada, :id, :alphanu, :numbers, :floats, :files
  json.url dadabada_url(dadabada, format: :json)
end
