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

  describe 'GET #new' do
    before { get :new }

    it 'renders new view' do
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves a new shop into db' do
        expect { post :create, params: { shop: attributes_for(:shop) }, format: :js}.to change(Shop, :count).by(1)
      end

      it 'redirects to shop' do
        post :create, params: { shop: attributes_for(:shop) }
        expect(response).to redirect_to assigns(:shop)
      end
    end

    context 'with invalid attributes' do
      it 'does not save the shop' do
        expect do
          post :create, params: { shop: attributes_for(:shop, :invalid) }, format: :js
        end.to_not change(Shop, :count)
      end

      it 'renders create' do
        post :create, params: { shop: attributes_for(:shop, :invalid) }, format: :js
        expect(response).to render_template :create
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:shop) { create(:shop) }
    it 'deletes the shop' do
      expect { delete :destroy, params: { id: shop } }.to change(Shop, :count).by(-1)
    end

    it 'redirects to index' do
      delete :destroy, params: { id: shop }
      expect(response).to redirect_to shops_path
    end
  end
end
