# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :full_name, presence: true
  has_one_attached :image
  validates :phone_number, format: { with: /\D*([2-9]\d{2})(\D*)([2-9]\d{2})(\D*)(\d{4})\D*/,
                                     message: 'Error North America format' }
end
