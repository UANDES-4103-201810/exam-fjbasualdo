class Order < ApplicationRecord
  has_one :delivery_info
  has_many :pizzas
  belongs_to :customer

  validate :at_least_one_pizza_is_present

  private

  def at_least_one_pizza_is_present
    errors.add(
        :base,
        'You forgot to order your pizza! '
    ) if pizzas.none?
  end
end
