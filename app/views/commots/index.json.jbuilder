json.array!(@commots) do |commot|
  json.extract! commot, :id, :post_id, :body
  json.url commot_url(commot, format: :json)
end
