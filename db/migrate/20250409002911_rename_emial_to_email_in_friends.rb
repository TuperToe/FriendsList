class RenameEmialToEmailInFriends < ActiveRecord::Migration[8.0]
  def change
    rename_column :friends, :emial, :email
  end
end
