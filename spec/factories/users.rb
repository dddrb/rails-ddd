FactoryGirl.define do
  factory :user do
    username  'root'
    password  'pass'
    name      'Admin'
    roles     [:admin]
  end
end
