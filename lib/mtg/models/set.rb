module Mtg
  module Models
    class Set < ApplicationRecord
      self.inheritance_column = nil

      has_many :cards, foreign_key: :set_code, primary_key: :code

      validates :base_set_size, :code, :name, :release_date, :total_set_size, :type, presence: true
    end
  end
end
