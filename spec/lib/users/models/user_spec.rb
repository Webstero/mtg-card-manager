RSpec.describe ::Users::Models::User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it { should have_many(:card_collections) }
end