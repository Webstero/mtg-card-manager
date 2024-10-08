module Mtg
  module Models
    class Card < ApplicationRecord
      self.inheritance_column = nil

      SIMPLE_FILTERS = %w[colors types rarities].freeze

      belongs_to :set, foreign_key: :set_code, primary_key: :code
      has_one :card_identifier, foreign_key: :uuid, primary_key: :uuid

      validates :availability, :border_color, :colors, :face_converted_mana_cost, :frame_version,
                :has_foil, :has_non_foil, :language, :layout, :mana_value, :uuid,
                :name, :number, :rarity, :set_code, presence: true

      validates :card_identifier, presence: true

      def image_url
        image_name = card_identifier.scryfall_id

        "https://cards.scryfall.io/normal/front/" \
        "#{image_name[0]}/#{image_name[1]}/#{image_name}.jpg"
      end
    end
  end
end
