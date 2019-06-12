class CreateProductAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :product_availabilities do |t|
      t.references :shop, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
