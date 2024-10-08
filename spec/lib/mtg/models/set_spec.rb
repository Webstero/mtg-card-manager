RSpec.describe ::Mtg::Models::Set, type: :model do
  required_attributes = %i[
    base_set_size
    code
    name
    release_date
    total_set_size
    type
  ]

  required_attributes.each do |attribute|
    it { should validate_presence_of(attribute) }
  end

  it { should have_many(:cards) }
end