class Vehicle < ApplicationRecord
  ## VALIDATIONS
  validates :plate, :plate, :color, :engine,
            presence: true
  validates :plate, uniqueness: true
end
