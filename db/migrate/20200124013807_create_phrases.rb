# frozen_string_literal: true

class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :quotation
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
