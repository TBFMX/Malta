json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :price, :yield
  json.url ingredient_url(ingredient, format: :json)
end
