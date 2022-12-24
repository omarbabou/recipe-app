require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { described_class.new(name: 'Food', measurement_unit: 'grams', price: 1, quantity: 1) }
  describe 'Validations' do
  it 'is\'t valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
end
