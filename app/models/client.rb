# frozen_string_literal: true

class Client < ApplicationRecord
  validates :name, presence: true, length: { in: (1..128) }
  validates :phone_number, presence: true, length: { in: (1..16) }
  validates :email, length: { in: (5..256) }, allow_blank: true
end
