class CreateDelays < ActiveRecord::Migration[5.0]
  def change
    create_table :delays do |t|
      t.references :student, foreign_key: true
      t.references :subjectsto_classroom, foreign_key: true

      t.timestamps
    end
  end
end
