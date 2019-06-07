require 'rails_helper'

RSpec.describe ShopsController, type: :controller do
  let(:shop) { create :shop }

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

  describe 'GET #show' do
    let!(:products) { create_list :product, 3, shop: shop }

    before { get :show, params: { id: shop } }

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end
