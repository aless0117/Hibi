class AddLackcodeToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_reference :notifications, :lack, foreign_key: true
    add_reference :notifications, :lackcode, foreign_key: true
  end
end
