require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    it { should validate_presence_of :articul }
    it { should validate_presence_of :title }
    it { should validate_presence_of :price }
    it { should validate_presence_of :amount }
    it { should validate_presence_of :color }
  end

  describe 'associations' do
    it { should have_one :shop }
    it { should have_one :product_availability }
  end
end
