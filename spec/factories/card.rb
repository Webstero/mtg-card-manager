FactoryBot.define do
  factory :card, class: "Mtg::Models::Card" do
    artist { "Colin Boyer" }
    availability { "mtgo, paper" }
    border_color { "black" }
    colors { "R, W" }
    mana_cost { "{1}{R}{W}" }
    frame_version { "2015" }
    has_foil { true }
    has_non_foil { true }
    language { "English" }
    layout { "normal" }
    mana_value { 3.0 }
    name { "Kargan Warleader" }
    number { "391" }
    rarity { "uncommon" }
    set_code { "ZNR" }
    uuid { SecureRandom.uuid }

    association :set, factory: :mtg_set
    association :card_identifier, factory: :card_identifier, strategy: :build
  end
end
