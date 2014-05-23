json.array!(@juiceweeks) do |juiceweek|
  json.extract! juiceweek, :id, :date, :juicer_id, :juice_id
  json.url juiceweek_url(juiceweek, format: :json)
end
