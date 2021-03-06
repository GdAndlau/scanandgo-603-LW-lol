class Order < ApplicationRecord
  has_many :order_items, :dependent => :destroy
  belongs_to :store
  belongs_to :user
  monetize :price_cents

end
