FactoryBot.define do
  factory :card_collection, class: "::CardManagement::Models::CardCollection" do
    name { "My Collection" }
    
    user
  end
end