# frozen_string_literal: true

class AddUserToPhrase < ActiveRecord::Migration[5.2]
  def change
    add_reference :phrases, :user, foreign_key: true
  end
end
