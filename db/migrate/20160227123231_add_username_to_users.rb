class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside of this method, is translated to SQL and modifies the DB (currently, SQLite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # First index username for quick (rapid) looku. Second, ensure usernames are Always Unique.
  end
end
