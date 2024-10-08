FactoryBot.define do
  factory :card_identifier, class: "Mtg::Models::CardIdentifier" do
    card_kingdom_foil_id { "238370" }
    card_kingdom_id { "237883" }
    cardsphere_foil_id { "71425" }
    cardsphere_id { "71515" }
    mcm_id { "501980" }
    mcm_meta_id { "317195" }
    mtgjson_v4_id { SecureRandom.uuid }
    scryfall_card_back_id { SecureRandom.uuid }
    scryfall_id { SecureRandom.uuid }
    scryfall_illustration_id { SecureRandom.uuid }
    scryfall_oracle_id { SecureRandom.uuid }
    tcgplayer_product_id { SecureRandom.uuid }
    uuid { SecureRandom.uuid }

    card
  end
end