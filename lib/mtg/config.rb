module Mtg
  class Config
    class << self
      def card_types
        file_path = File.join(__dir__, "/config", "card_types.json")
        config = JSON.parse(File.read(file_path))

        @card_types ||= config["data"].keys.map(&:capitalize)
      end

      def colors
        ["Black", "Red", "White", "Green", "Blue"]
      end

      def rarities
        ["Common", "Uncommon", "Rare", "Mythic Rare"]
      end
    end
  end
end
