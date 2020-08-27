class Car < Vehicle
  ## VALIDATIONS
  validates :doors, :gearbox, presence: true

  ## ENUMS
  enum gearbox: { manual: 0, automatic: 1 }, _prefix: :gearbox
end
