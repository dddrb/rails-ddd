json.array!(@users) do |user|
  json.extract! user, :id, :state, :name, :description, :email, :username, :password_digest, :roles
  json.url user_url(user, format: :json)
end
