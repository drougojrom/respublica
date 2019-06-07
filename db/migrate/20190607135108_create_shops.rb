class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :title
      t.string :address
      t.string :metro_station
      t.string :city

      t.timestamps
    end
  end
end
