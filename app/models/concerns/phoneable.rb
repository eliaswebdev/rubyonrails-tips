module Phoneable
  extend ActiveSupport::Concern

  included do
    has_many :phones,
             as: :phoneable,
             dependent: :destroy,
             inverse_of: :phoneable

    accepts_nested_attributes_for :phones,
                                  reject_if: :all_blank,
                                  allow_destroy: true
  end
end
