class AddUser2ToSubjectstoClassroom < ActiveRecord::Migration[5.0]
  def change
    add_reference :subjectsto_classrooms, :user, foreign_key: true
  end
end
