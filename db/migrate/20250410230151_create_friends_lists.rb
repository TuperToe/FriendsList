class CreateFriendsLists < ActiveRecord::Migration[8.0]
  def change
    create_table :friends_lists do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.string :twitter

      t.timestamps
    end
  end
end
