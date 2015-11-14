json.array!(@posts) do |post|
  json.extract! post, :id, :question, :body
  json.url post_url(post, format: :json)
end
