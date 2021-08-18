class AddCardNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :card_number, :string
  end
end
