require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  let(:shop) { create :shop }

  describe 'GET #search' do
    before { get :filter }

    it 'renders search view' do
      expect(response).to render_template :filter
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
      it 'saves a new product into db' do
        expect { post :create, params: { shop_id: shop.id, product: attributes_for(:product) },
                      format: :js}.to change(Product, :count).by(1)
      end

      it 'redirects to product' do
        post :create, params: { shop_id: shop.id, product: attributes_for(:product) }
        product = Product.last
        expect(response).to redirect_to shop_product_path(shop_id: shop, id: product.id)
      end
    end

    context 'with invalid attributes' do
      it 'does not save a new product into db' do
        expect { post :create, params: { shop_id: shop.id, product: attributes_for(:product, :invalid) },
                      format: :js}.to_not change(Product, :count)
      end

      it 'does not redirect to product' do
        post :create, params: { shop_id: shop.id, product: attributes_for(:product, :invalid) }, format: :js
        expect(response).to render_template :create
      end
    end
  end
end
