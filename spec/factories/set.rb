FactoryBot.define do
  factory :mtg_set, class: "Mtg::Models::Set" do
    base_set_size { Faker::Number.between(from: 100, to: 500) }
    code { "ZNR" }
    name { Faker::Game.title }
    release_date { Faker::Date.between(from: "2020-01-01", to: "2023-12-31") }
    total_set_size { Faker::Number.between(from: 300, to: 600) }
    type { "expansion" }
    cardsphere_set_id { Faker::Number.number(digits: 4) }
    mcm_id { Faker::Number.number(digits: 4) }
    mcm_id_extras { Faker::Number.number(digits: 4) }
    mcm_name { Faker::Game.title }
    mtgo_code { code }
    tcgplayer_group_id { Faker::Number.number(digits: 4) }
    languages { "English" }
    keyrune_code { code }
    token_set_code { "[FILTERED]" }
  end
end