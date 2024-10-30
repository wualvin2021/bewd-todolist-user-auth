# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    username { "testuser" }    # Default valid username
    email { "test@example.com" } # Any required fields
    password { "password" }     # Include any required password or other fields
  end
end
