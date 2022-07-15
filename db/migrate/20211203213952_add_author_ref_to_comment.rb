# frozen_string_literal: true

class AddAuthorRefToComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :Author, foreign_key: { to_table: :users }
  end
end
