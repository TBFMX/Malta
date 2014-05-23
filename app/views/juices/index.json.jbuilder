json.array!(@juices) do |juice|
  json.extract! juice, :id, :name, :recipe_id
  json.url juice_url(juice, format: :json)
end
