# frozen_string_literal: true

class Phrase < ApplicationRecord
  validates :quotation, presence: true

  enum status: %i[pending approved]
end
