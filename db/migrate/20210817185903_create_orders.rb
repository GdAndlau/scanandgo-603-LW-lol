class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :store
      t.references :user
      t.boolean :completed

      t.timestamps
    end
  end
end
