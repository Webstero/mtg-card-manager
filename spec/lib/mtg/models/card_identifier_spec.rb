RSpec.describe ::Mtg::Models::CardIdentifier, type: :model do
  it { should validate_presence_of(:card_kingdom_id) }
  it { should validate_presence_of(:scryfall_id) }
  it { should validate_presence_of(:uuid) }

  it { should belong_to(:card) }
end