json.array!(@users) do |user|
  json.extract! user, :id, :state, :name, :description, :email, :username, :roles
  json.url v1_user_url(user, format: :json)
end
