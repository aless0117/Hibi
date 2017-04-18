class AddStudentToNotification < ActiveRecord::Migration[5.0]
  def change
    add_reference :notifications, :student, foreign_key: true
  end
end
