# frozen_string_literal: true

class Unit < ApplicationRecord
  has_many :measurements

  scope :with_measurements, -> { includes(:measurements) }

  validates :title, presence: true
end
