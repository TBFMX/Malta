json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :juice_id, :ingredient_id, :portion
  json.url recipe_url(recipe, format: :json)
end
