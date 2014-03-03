json.array!(@users) do |user|
  json.extract! user, :id, :name, :phone, :email, :FBid
  json.url user_url(user, format: :json)
end
