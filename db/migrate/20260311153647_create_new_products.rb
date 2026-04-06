class CreateNewProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :new_products do |t|
      t.string :name
      t.string :part_number

      t.timestamps
    end
  end
end
