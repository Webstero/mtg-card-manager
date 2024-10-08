FactoryBot.define do
  factory :user, class: "Users::Models::User" do
    email { Faker::Internet.email }
    password { "Pasword123!@#" }
  end
end