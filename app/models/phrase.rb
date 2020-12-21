# frozen_string_literal: true

class Phrase < ApplicationRecord
  belongs_to :user
  
  validates :quotation, presence: true
  validates_length_of :quotation, minimum: 3, maximum: 250, allow_blank: false

  enum status: %i[pending approved]
end
