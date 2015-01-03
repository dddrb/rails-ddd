User.find_or_create_by(username: :root) do |user|
  user.name = 'Admin'
  user.password = 'pass'
  user.roles = [:admin]
end

User.find_or_create_by(username: :user) do |user|
  user.name = 'Guest'
  user.password = 'pass'
  user.roles = [:guest]
end
