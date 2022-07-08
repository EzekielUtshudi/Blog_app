class RemoveRefFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :author
  end
end
