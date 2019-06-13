require 'rails_helper'

RSpec.describe ProductAvailability, type: :model do
  describe 'associations' do
    it { should belong_to :shop }
    it { should belong_to :product }
  end
end
