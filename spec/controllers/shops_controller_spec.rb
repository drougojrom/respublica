require 'rails_helper'

RSpec.describe ShopsController, type: :controller do
  describe 'GET #index' do
    let!(:shops) { create_list(:shop, 3) }
    before { get :index }

    it 'populates an array of all shops' do
      expect(assigns(:shops)).to match_array(shops)
    end

    it 'renders index view' do
      expect(response).to render_template :index
    end
  end
end
