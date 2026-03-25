class AddUsernameToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :Username, :string
  end
end
