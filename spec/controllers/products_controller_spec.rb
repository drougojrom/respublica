require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  let(:shop) { create :shop }

  describe 'GET #search' do
    before { get :search }

    it 'renders search view' do
      expect(response).to render_template :search
    end
  end

  describe 'GET #new' do
    before { get :new, params: { shop_id: shop.id } }

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do

    end

    context 'with invalid attributes' do

    end
  end
end
