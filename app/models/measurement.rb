# frozen_string_literal: true

class Measurement < ApplicationRecord
  belongs_to :user
  belongs_to :unit

  scope :with_units, -> { includes(:unit) }

  scope :for_user, ->(user) { where(user_id: user.id) }

  validates :value, presence: true
end
