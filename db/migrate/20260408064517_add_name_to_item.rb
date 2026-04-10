class AddNameToItem < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :name, :string
  end
end
