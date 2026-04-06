class RenameUsernameColumn < ActiveRecord::Migration[8.1]
  def change
   rename_column :users, :Username, :username
  end
  
end
