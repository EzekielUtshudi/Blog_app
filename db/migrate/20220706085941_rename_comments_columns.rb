# frozen_string_literal: true

class RenameCommentsColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column(:comments, :Text, :text)
  end
end
