class CreateSubjectstoClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :subjectsto_classrooms do |t|
      t.references :schedule, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
