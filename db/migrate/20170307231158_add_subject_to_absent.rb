class AddSubjectToAbsent < ActiveRecord::Migration[5.0]
  def change
    add_reference :absents, :subjectsto_classroom, foreign_key: true
  end
end
