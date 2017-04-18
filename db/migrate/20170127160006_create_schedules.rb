class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
