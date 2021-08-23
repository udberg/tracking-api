# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :measurements, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
end
