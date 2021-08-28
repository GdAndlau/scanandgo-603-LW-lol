class Product < ApplicationRecord
  belongs_to :store
  has_one :qr_code, :dependent => :destroy
end
