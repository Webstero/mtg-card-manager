# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_06_225556) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_collections", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.integer "card_ids", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_card_collections_on_user_id"
  end

  create_table "card_foreign_data", id: :serial, force: :cascade do |t|
    t.text "face_name"
    t.text "flavor_text"
    t.text "identifiers"
    t.text "language"
    t.integer "multiverse_id"
    t.text "name"
    t.text "text"
    t.text "type"
    t.text "uuid"
    t.index ["uuid"], name: "cardforeigndata_uuid"
  end

  create_table "card_identifiers", id: :serial, force: :cascade do |t|
    t.text "card_kingdom_etched_id"
    t.text "card_kingdom_foil_id"
    t.text "card_kingdom_id"
    t.text "cardsphere_foil_id"
    t.text "cardsphere_id"
    t.text "mcm_id"
    t.text "mcm_meta_id"
    t.text "mtg_arena_id"
    t.text "mtgjson_foil_version_id"
    t.text "mtgjson_non_foil_version_id"
    t.text "mtgjson_v4_id"
    t.text "mtgo_foil_id"
    t.text "mtgo_id"
    t.text "multiverse_id"
    t.text "scryfall_card_back_id"
    t.text "scryfall_id"
    t.text "scryfall_illustration_id"
    t.text "scryfall_oracle_id"
    t.text "tcgplayer_etched_product_id"
    t.text "tcgplayer_product_id"
    t.text "uuid"
    t.index ["uuid"], name: "cardidentifiers_uuid"
  end

  create_table "card_legalities", id: :serial, force: :cascade do |t|
    t.text "alchemy"
    t.text "brawl"
    t.text "commander"
    t.text "duel"
    t.text "explorer"
    t.text "future"
    t.text "gladiator"
    t.text "historic"
    t.text "legacy"
    t.text "modern"
    t.text "oathbreaker"
    t.text "oldschool"
    t.text "pauper"
    t.text "paupercommander"
    t.text "penny"
    t.text "pioneer"
    t.text "predh"
    t.text "premodern"
    t.text "standard"
    t.text "standardbrawl"
    t.text "timeless"
    t.text "uuid"
    t.text "vintage"
    t.index ["uuid"], name: "cardlegalities_uuid"
  end

  create_table "card_purchase_urls", id: :serial, force: :cascade do |t|
    t.text "card_kingdom"
    t.text "card_kingdom_etched"
    t.text "card_kingdom_foil"
    t.text "cardmarket"
    t.text "tcgplayer"
    t.text "tcgplayer_etched"
    t.text "uuid"
    t.index ["uuid"], name: "cardpurchaseurls_uuid"
  end

  create_table "card_rulings", id: :serial, force: :cascade do |t|
    t.date "date"
    t.text "text"
    t.string "uuid", limit: 36, null: false
    t.index ["uuid"], name: "cardrulings_uuid"
  end

  create_table "cards", id: :serial, force: :cascade do |t|
    t.text "artist"
    t.text "artist_ids"
    t.text "ascii_name"
    t.text "attraction_lights"
    t.text "availability"
    t.text "booster_types"
    t.text "border_color"
    t.text "card_parts"
    t.text "color_identity"
    t.text "color_indicator"
    t.text "colors"
    t.text "defense"
    t.text "duel_deck"
    t.integer "edhrec_rank"
    t.float "edhrec_saltiness"
    t.float "face_converted_mana_cost"
    t.text "face_flavor_name"
    t.float "face_mana_value"
    t.text "face_name"
    t.text "finishes"
    t.text "flavor_name"
    t.text "flavor_text"
    t.text "frame_effects"
    t.text "frame_version"
    t.text "hand"
    t.boolean "has_alternative_deck_limit"
    t.boolean "has_content_warning"
    t.boolean "has_foil"
    t.boolean "has_non_foil"
    t.boolean "is_alternative"
    t.boolean "is_full_art"
    t.boolean "is_funny"
    t.boolean "is_online_only"
    t.boolean "is_oversized"
    t.boolean "is_promo"
    t.boolean "is_rebalanced"
    t.boolean "is_reprint"
    t.boolean "is_reserved"
    t.boolean "is_starter"
    t.boolean "is_story_spotlight"
    t.boolean "is_textless"
    t.boolean "is_timeshifted"
    t.text "keywords"
    t.text "language"
    t.text "layout"
    t.text "leadership_skills"
    t.text "life"
    t.text "loyalty"
    t.text "mana_cost"
    t.float "mana_value"
    t.text "name"
    t.text "number"
    t.text "original_printings"
    t.text "original_release_date"
    t.text "original_text"
    t.text "original_type"
    t.text "other_face_ids"
    t.text "power"
    t.text "printings"
    t.text "promo_types"
    t.text "rarity"
    t.text "rebalanced_printings"
    t.text "related_cards"
    t.text "security_stamp"
    t.text "set_code"
    t.text "side"
    t.text "signature"
    t.text "source_products"
    t.text "subsets"
    t.text "subtypes"
    t.text "supertypes"
    t.text "text"
    t.text "toughness"
    t.text "type"
    t.text "types"
    t.string "uuid", limit: 36, null: false
    t.text "variations"
    t.text "watermark"
    t.index ["uuid"], name: "cards_uuid"
  end

  create_table "meta", id: :serial, force: :cascade do |t|
    t.date "date"
    t.text "version"
  end

  create_table "set_booster_content_weights", id: :serial, force: :cascade do |t|
    t.integer "booster_index"
    t.string "booster_name", limit: 255
    t.integer "booster_weight"
    t.string "set_code", limit: 20
  end

  create_table "set_booster_contents", id: :serial, force: :cascade do |t|
    t.integer "booster_index"
    t.string "booster_name", limit: 255
    t.string "set_code", limit: 20
    t.string "sheet_name", limit: 255
    t.integer "sheet_picks"

    t.unique_constraint ["set_code", "sheet_name", "booster_name", "booster_index"], name: "setboostercontents_setcode_sheetname_boostername_boosterind_key"
  end

  create_table "set_booster_sheet_cards", id: :serial, force: :cascade do |t|
    t.string "booster_name", limit: 255
    t.string "card_uuid", limit: 36, null: false
    t.bigint "card_weight"
    t.string "set_code", limit: 20
    t.string "sheet_name", limit: 255

    t.unique_constraint ["set_code", "sheet_name", "booster_name", "card_uuid"], name: "setboostersheetcards_setcode_sheetname_boostername_carduuid_key"
  end

  create_table "set_booster_sheets", id: :serial, force: :cascade do |t|
    t.string "booster_name", limit: 255
    t.string "set_code", limit: 20
    t.boolean "sheet_has_balance_colors"
    t.boolean "sheet_is_foil"
    t.string "sheet_name", limit: 255

    t.unique_constraint ["set_code", "sheet_name", "booster_name"], name: "setboostersheets_setcode_sheetname_boostername_key"
  end

  create_table "set_translations", id: :serial, force: :cascade do |t|
    t.text "language"
    t.string "set_code", limit: 20
    t.text "translation"
  end

  create_table "sets", id: :serial, force: :cascade do |t|
    t.integer "base_set_size"
    t.text "block"
    t.integer "cardsphere_set_id"
    t.string "code", limit: 8, null: false
    t.boolean "is_foil_only"
    t.boolean "is_foreign_only"
    t.boolean "is_non_foil_only"
    t.boolean "is_online_only"
    t.boolean "is_partial_preview"
    t.text "keyrune_code"
    t.text "languages"
    t.integer "mcm_id"
    t.integer "mcm_id_extras"
    t.text "mcm_name"
    t.text "mtgo_code"
    t.text "name"
    t.text "parent_code"
    t.text "release_date"
    t.integer "tcgplayer_group_id"
    t.text "token_set_code"
    t.integer "total_set_size"
    t.text "type"

    t.unique_constraint ["code"], name: "sets_code_key"
  end

  create_table "token_identifiers", id: :serial, force: :cascade do |t|
    t.text "card_kingdom_etched_id"
    t.text "card_kingdom_foil_id"
    t.text "card_kingdom_id"
    t.text "cardsphere_foil_id"
    t.text "cardsphere_id"
    t.text "mcm_id"
    t.text "mcm_meta_id"
    t.text "mtg_arena_id"
    t.text "mtgjson_foil_version_id"
    t.text "mtgjson_non_foil_version_id"
    t.text "mtgjson_v4_id"
    t.text "mtgo_foil_id"
    t.text "mtgo_id"
    t.text "multiverse_id"
    t.text "scryfall_card_back_id"
    t.text "scryfall_id"
    t.text "scryfall_illustration_id"
    t.text "scryfall_oracle_id"
    t.text "tcgplayer_etched_product_id"
    t.text "tcgplayer_product_id"
    t.text "uuid"
    t.index ["uuid"], name: "tokenidentifiers_uuid"
  end

  create_table "tokens", id: :serial, force: :cascade do |t|
    t.text "artist"
    t.text "artist_ids"
    t.text "ascii_name"
    t.text "availability"
    t.text "booster_types"
    t.text "border_color"
    t.text "color_identity"
    t.text "colors"
    t.float "edhrec_saltiness"
    t.text "face_name"
    t.text "finishes"
    t.text "flavor_name"
    t.text "flavor_text"
    t.text "frame_effects"
    t.text "frame_version"
    t.boolean "has_foil"
    t.boolean "has_non_foil"
    t.boolean "is_full_art"
    t.boolean "is_funny"
    t.boolean "is_oversized"
    t.boolean "is_promo"
    t.boolean "is_reprint"
    t.boolean "is_textless"
    t.text "keywords"
    t.text "language"
    t.text "layout"
    t.text "mana_cost"
    t.text "name"
    t.text "number"
    t.text "orientation"
    t.text "original_text"
    t.text "original_type"
    t.text "other_face_ids"
    t.text "power"
    t.text "promo_types"
    t.text "related_cards"
    t.text "reverse_related"
    t.text "security_stamp"
    t.text "set_code"
    t.text "side"
    t.text "signature"
    t.text "subtypes"
    t.text "supertypes"
    t.text "text"
    t.text "toughness"
    t.text "type"
    t.text "types"
    t.string "uuid", limit: 36, null: false
    t.text "watermark"
    t.index ["uuid"], name: "tokens_uuid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "card_collections", "users"
end
