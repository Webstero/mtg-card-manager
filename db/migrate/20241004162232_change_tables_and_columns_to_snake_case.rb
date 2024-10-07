class ChangeTablesAndColumnsToSnakeCase < ActiveRecord::Migration[7.2]
  def change
    rename_table :cardidentifiers, :card_identifiers
    rename_table :cardlegalities, :card_legalities
    rename_table :cardrulings, :card_rulings
    rename_table :cardforeigndata, :card_foreign_data
    rename_table :cardpurchaseurls, :card_purchase_urls
    rename_table :tokenidentifiers, :token_identifiers
    rename_table :settranslations, :set_translations
    rename_table :setboostercontents, :set_booster_contents
    rename_table :setboostercontentweights, :set_booster_content_weights
    rename_table :setboostersheets, :set_booster_sheets
    rename_table :setboostersheetcards, :set_booster_sheet_cards

    change_table :sets do |t|
      t.rename :basesetsize, :base_set_size
      t.rename :cardspheresetid, :cardsphere_set_id
      t.rename :isfoilonly, :is_foil_only
      t.rename :isforeignonly, :is_foreign_only
      t.rename :isnonfoilonly, :is_non_foil_only
      t.rename :isonlineonly, :is_online_only
      t.rename :ispartialpreview, :is_partial_preview
      t.rename :keyrunecode, :keyrune_code
      t.rename :mcmid, :mcm_id
      t.rename :mcmidextras, :mcm_id_extras
      t.rename :mcmname, :mcm_name
      t.rename :mtgocode, :mtgo_code
      t.rename :parentcode, :parent_code
      t.rename :releasedate, :release_date
      t.rename :tcgplayergroupid, :tcgplayer_group_id
      t.rename :tokensetcode, :token_set_code
      t.rename :totalsetsize, :total_set_size
    end

    change_table :cards do |t|
      t.rename :artistids, :artist_ids
      t.rename :asciiname, :ascii_name
      t.rename :attractionlights, :attraction_lights
      t.rename :boostertypes, :booster_types
      t.rename :bordercolor, :border_color
      t.rename :cardparts, :card_parts
      t.rename :coloridentity, :color_identity
      t.rename :colorindicator, :color_indicator
      t.rename :dueldeck, :duel_deck
      t.rename :edhrecrank, :edhrec_rank
      t.rename :edhrecsaltiness, :edhrec_saltiness
      t.rename :faceconvertedmanacost, :face_converted_mana_cost
      t.rename :faceflavorname, :face_flavor_name
      t.rename :facemanavalue, :face_mana_value
      t.rename :facename, :face_name
      t.rename :flavorname, :flavor_name
      t.rename :flavortext, :flavor_text
      t.rename :frameeffects, :frame_effects
      t.rename :frameversion, :frame_version
      t.rename :hasalternativedecklimit, :has_alternative_deck_limit
      t.rename :hascontentwarning, :has_content_warning
      t.rename :hasfoil, :has_foil
      t.rename :hasnonfoil, :has_non_foil
      t.rename :isalternative, :is_alternative
      t.rename :isfullart, :is_full_art
      t.rename :isfunny, :is_funny
      t.rename :isonlineonly, :is_online_only
      t.rename :isoversized, :is_oversized
      t.rename :ispromo, :is_promo
      t.rename :isrebalanced, :is_rebalanced
      t.rename :isreprint, :is_reprint
      t.rename :isreserved, :is_reserved
      t.rename :isstarter, :is_starter
      t.rename :isstoryspotlight, :is_story_spotlight
      t.rename :istextless, :is_textless
      t.rename :istimeshifted, :is_timeshifted
      t.rename :leadershipskills, :leadership_skills
      t.rename :manacost, :mana_cost
      t.rename :manavalue, :mana_value
      t.rename :originalprintings, :original_printings
      t.rename :originalreleasedate, :original_release_date
      t.rename :originaltext, :original_text
      t.rename :originaltype, :original_type
      t.rename :otherfaceids, :other_face_ids
      t.rename :promotypes, :promo_types
      t.rename :relatedcards, :related_cards
      t.rename :securitystamp, :security_stamp
      t.rename :setcode, :set_code
      t.rename :sourceproducts, :source_products
      t.rename :rebalancedprintings, :rebalanced_printings
    end

    change_table :tokens do |t|
      t.rename :artistids, :artist_ids
      t.rename :asciiname, :ascii_name
      t.rename :boostertypes, :booster_types
      t.rename :bordercolor, :border_color
      t.rename :coloridentity, :color_identity
      t.rename :edhrecsaltiness, :edhrec_saltiness
      t.rename :facename, :face_name
      t.rename :flavorname, :flavor_name
      t.rename :flavortext, :flavor_text
      t.rename :frameeffects, :frame_effects
      t.rename :frameversion, :frame_version
      t.rename :hasfoil, :has_foil
      t.rename :hasnonfoil, :has_non_foil
      t.rename :isfullart, :is_full_art
      t.rename :isfunny, :is_funny
      t.rename :isoversized, :is_oversized
      t.rename :ispromo, :is_promo
      t.rename :isreprint, :is_reprint
      t.rename :istextless, :is_textless
      t.rename :manacost, :mana_cost
      t.rename :originaltext, :original_text
      t.rename :originaltype, :original_type
      t.rename :otherfaceids, :other_face_ids
      t.rename :promotypes, :promo_types
      t.rename :relatedcards, :related_cards
      t.rename :reverserelated, :reverse_related
      t.rename :securitystamp, :security_stamp
      t.rename :setcode, :set_code
    end

    change_table :card_identifiers do |t|
      t.rename :cardkingdometchedid, :card_kingdom_etched_id
      t.rename :cardkingdomfoilid, :card_kingdom_foil_id
      t.rename :cardkingdomid, :card_kingdom_id
      t.rename :cardspherefoilid, :cardsphere_foil_id
      t.rename :cardsphereid, :cardsphere_id
      t.rename :mcmid, :mcm_id
      t.rename :mcmmetaid, :mcm_meta_id
      t.rename :mtgarenaid, :mtg_arena_id
      t.rename :mtgjsonfoilversionid, :mtgjson_foil_version_id
      t.rename :mtgjsonnonfoilversionid, :mtgjson_non_foil_version_id
      t.rename :mtgjsonv4id, :mtgjson_v4_id
      t.rename :mtgofoilid, :mtgo_foil_id
      t.rename :mtgoid, :mtgo_id
      t.rename :multiverseid, :multiverse_id
      t.rename :scryfallcardbackid, :scryfall_card_back_id
      t.rename :scryfallid, :scryfall_id
      t.rename :scryfallillustrationid, :scryfall_illustration_id
      t.rename :scryfalloracleid, :scryfall_oracle_id
      t.rename :tcgplayeretchedproductid, :tcgplayer_etched_product_id
      t.rename :tcgplayerproductid, :tcgplayer_product_id
    end

    change_table :card_foreign_data do |t|
      t.rename :facename, :face_name
      t.rename :flavortext, :flavor_text
      t.rename :multiverseid, :multiverse_id
    end

    change_table :card_purchase_urls do |t|
      t.rename :cardkingdom, :card_kingdom
      t.rename :cardkingdometched, :card_kingdom_etched
      t.rename :cardkingdomfoil, :card_kingdom_foil
      t.rename :tcgplayeretched, :tcgplayer_etched
    end

    change_table :token_identifiers do |t|
      t.rename :cardkingdometchedid, :card_kingdom_etched_id
      t.rename :cardkingdomfoilid, :card_kingdom_foil_id
      t.rename :cardkingdomid, :card_kingdom_id
      t.rename :cardspherefoilid, :cardsphere_foil_id
      t.rename :cardsphereid, :cardsphere_id
      t.rename :mcmid, :mcm_id
      t.rename :mcmmetaid, :mcm_meta_id
      t.rename :mtgarenaid, :mtg_arena_id
      t.rename :mtgjsonfoilversionid, :mtgjson_foil_version_id
      t.rename :mtgjsonnonfoilversionid, :mtgjson_non_foil_version_id
      t.rename :mtgjsonv4id, :mtgjson_v4_id
      t.rename :mtgofoilid, :mtgo_foil_id
      t.rename :mtgoid, :mtgo_id
      t.rename :multiverseid, :multiverse_id
      t.rename :scryfallcardbackid, :scryfall_card_back_id
      t.rename :scryfallid, :scryfall_id
      t.rename :scryfallillustrationid, :scryfall_illustration_id
      t.rename :scryfalloracleid, :scryfall_oracle_id
      t.rename :tcgplayeretchedproductid, :tcgplayer_etched_product_id
      t.rename :tcgplayerproductid, :tcgplayer_product_id
    end

    change_table :set_translations do |t|
      t.rename :setcode, :set_code
    end

    change_table :set_booster_contents do |t|
      t.rename :boosterindex, :booster_index
      t.rename :boostername, :booster_name
      t.rename :setcode, :set_code
      t.rename :sheetname, :sheet_name
      t.rename :sheetpicks, :sheet_picks
    end

    change_table :set_booster_content_weights do |t|
      t.rename :boosterindex, :booster_index
      t.rename :boostername, :booster_name
      t.rename :boosterweight, :booster_weight
      t.rename :setcode, :set_code
    end

    change_table :set_booster_sheets do |t|
      t.rename :boostername, :booster_name
      t.rename :setcode, :set_code
      t.rename :sheethasbalancecolors, :sheet_has_balance_colors
      t.rename :sheetisfoil, :sheet_is_foil
      t.rename :sheetname, :sheet_name
    end

    change_table :set_booster_sheet_cards do |t|
      t.rename :boostername, :booster_name
      t.rename :carduuid, :card_uuid
      t.rename :cardweight, :card_weight
      t.rename :setcode, :set_code
      t.rename :sheetname, :sheet_name
    end
  end
end
