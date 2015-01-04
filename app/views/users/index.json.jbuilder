json.array!(@users) do |user|
  json.extract! user, :id, :state, :name, :description, :email, :username, :roles
  json.url user_url(user, format: :json)
end
