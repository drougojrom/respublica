require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :address }
    it { should validate_presence_of :city }
  end
end
