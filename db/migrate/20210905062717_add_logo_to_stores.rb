class AddLogoToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :logo, :string
  end
end
