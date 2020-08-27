class Motorcycle < Vehicle
  ## VALIDATIONS
  validates :starter_system, presence: true

  ## ENUMS
  enum starter_system: { manual: 0, automatic: 1 }
end
