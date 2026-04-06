class AddPublishedAtToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :published_at, :datetime
  end
end
