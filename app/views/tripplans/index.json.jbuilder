json.array!(@tripplans) do |tripplan|
  json.extract! tripplan, :id, :user_id, :tripname, :imagebinary, :imagelink
  json.url tripplan_url(tripplan, format: :json)
end
