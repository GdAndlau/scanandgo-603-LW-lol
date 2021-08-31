class AddColumnsToOrder < ActiveRecord::Migration[6.0]

  def change
    add_monetize :orders, :price, currency: { present: false }
    add_column :orders, :state, :string
    add_column :orders, :product_sku, :string
    add_column :orders, :checkout_session_id, :string
  end
end
