class ChangeArticulToVendorCode < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :articul, :vendor_code
  end
end
