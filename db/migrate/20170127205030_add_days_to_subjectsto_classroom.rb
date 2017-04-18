class AddDaysToSubjectstoClassroom < ActiveRecord::Migration[5.0]
  def change
    add_reference :subjectsto_classrooms, :day, foreign_key: true
  end
end
