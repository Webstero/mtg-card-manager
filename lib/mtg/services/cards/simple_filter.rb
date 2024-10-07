module Mtg
  module Services
    module Cards
      class SimpleFilter
        def self.call(...) = new(...).call

        def initialize(params:)
          @initial_cards = ::Mtg::Models::Card.includes(:card_identifier)
          @params = params
        end

        def call
          selected_cards = select_cards

          selected_cards.pluck(:id)
        end

        attr_reader :initial_cards, :params

        private

        def select_cards
          params.reduce(initial_cards) do |filtered_cards, (filter_name, filter_values)|
            filter_values.present? ? filter_cards(filtered_cards, filter_name, filter_values) : filtered_cards
          end
        end

        def filter_cards(cards, filter_name, filter_values)
          conditions = filter_values.map do |_|
            "#{filter_name} ILIKE ?"
          end.join(" OR ")

          values = filter_values.map { |value| "%#{value}%" }

          cards.where(conditions, *values)
        end
      end
    end
  end
end
