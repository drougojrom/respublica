require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #search' do

    before { get :search }

    it 'renders search view' do
      expect(response).to render_template :search
    end
  end
end
