class Unit < ApplicationRecord
  has_many :measurements

  scope :with_measurements, -> { includes(:measurements) }

  validates :title, presence: true
  def measurements_for_user(user)
    measurements.for_user(user)
  end
end
