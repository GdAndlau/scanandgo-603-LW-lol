class Store < ApplicationRecord
  has_many :products
  has_many :orders

  ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
