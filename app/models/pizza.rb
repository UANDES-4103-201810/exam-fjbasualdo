class Pizza < ApplicationRecord
  has_one :crust
  has_one :recipe
end
