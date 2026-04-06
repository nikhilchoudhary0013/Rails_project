class AddUserAndJobToApplications < ActiveRecord::Migration[8.1]
  def change
    add_reference :applications, :user, null: false, foreign_key: true
    add_reference :applications, :job, null: false, foreign_key: true
  end
end
