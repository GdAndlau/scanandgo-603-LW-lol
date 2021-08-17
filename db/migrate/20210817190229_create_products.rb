class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :store
      t.string :title
      t.string :description
      t.integer :price
      t.integer :size
      t.string :image
      t.boolean :available
      t.integer :points
      t.integer :quantity

      t.timestamps
    end
  end
end
