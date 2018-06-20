class DeliveryInfo < ApplicationRecord
  belongs_to :order

  validates :phone, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validates :address1, presence: true, allow_blank: false
  validates :address2, presence: true, allow_blank: false
  validates :phone, presence: true, allow_blank: false
end
