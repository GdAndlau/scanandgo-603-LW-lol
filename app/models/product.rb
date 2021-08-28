class Product < ApplicationRecord
  belongs_to :store
  has_one :qr_code, dependent: :destroy
  after_create do
    self.create_qr_code(data: id)
  end
end
