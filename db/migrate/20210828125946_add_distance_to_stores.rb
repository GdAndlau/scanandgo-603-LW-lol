class AddDistanceToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :Distance, :float
  end
end
