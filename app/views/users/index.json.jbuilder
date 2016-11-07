json.array!(@users) do |user|
  json.extract! user, :id, :blocky1, :blocky2, :blocky3, :blocky4, :blocky5
  json.url user_url(user, format: :json)
end
