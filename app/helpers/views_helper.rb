module ViewsHelper
  def colors_filter_options
    colors = ::Mtg::Config.colors

    colors.map do |color|
      { label: color, value: color == "Blue" ? "U" : color[0] }
    end
  end

  def types_filter_options
    types = ::Mtg::Config.card_types

    types.map do |type|
      { label: type, value: type }
    end
  end

  def rarities_filter_options
    rarities = ::Mtg::Config.rarities

    rarities.map do |rarity|
      { label: rarity, value: rarity }
    end
  end
end
