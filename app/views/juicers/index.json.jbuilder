json.array!(@juicers) do |juicer|
  json.extract! juicer, :id, :name, :date, :juice_id
  json.url juicer_url(juicer, format: :json)
end
