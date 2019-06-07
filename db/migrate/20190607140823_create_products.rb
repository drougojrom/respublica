class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :articul
      t.string :title
      t.float :weight
      t.float :size
      t.string :color
      t.float :price
      t.integer :amount
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
