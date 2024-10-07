module Mtg
  module Models
    class CardIdentifier < ApplicationRecord
      belongs_to :card

      validates :card_kingdom_id, :scryfall_id, presence: true
    end
  end
end
