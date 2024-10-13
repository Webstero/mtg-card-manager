module Mtg
  class Config
    SIMPLE_FILTERS = %w[colors types rarities].freeze
    COLORS = %w[Black Red White Green Blue].freeze
    RARITIES = %w[Common Uncommon Rare Mythic Rare].freeze

    class << self
      def card_types
        file_path = File.join(__dir__, "/config", "card_types.json")
        config = JSON.parse(File.read(file_path))

        @card_types ||= config["data"].keys.map(&:capitalize)
      end
    end
  end
end
