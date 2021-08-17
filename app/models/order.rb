class Order < ApplicationRecord
  has_many: order_items;
  belongs_to: store;
  belongs_to: user;
end
