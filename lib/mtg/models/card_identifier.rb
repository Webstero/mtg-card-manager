module Mtg
  module Models
    class CardIdentifier < ApplicationRecord
      belongs_to :card, foreign_key: :uuid, primary_key: :uuid

      validates :card_kingdom_id, :scryfall_id, :uuid, presence: true
    end
  end
end
