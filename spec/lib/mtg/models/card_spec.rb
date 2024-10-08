RSpec.describe ::Mtg::Models::Card, type: :model do
  required_attributes = %i[
    availability
    border_color
    colors
    face_converted_mana_cost
    frame_version
    has_foil
    has_non_foil
    card_identifier
    language
    layout
    mana_value
    name
    number
    rarity
    set_code
    uuid
  ]

  required_attributes.each do |attribute|
    it { should validate_presence_of(attribute) }
  end

  it { should belong_to(:set) }
  it { should have_one(:card_identifier) }
end
