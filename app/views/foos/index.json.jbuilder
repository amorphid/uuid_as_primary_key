json.array!(@foos) do |foo|
  json.extract! foo, :id, :uuid
  json.url foo_url(foo, format: :json)
end
