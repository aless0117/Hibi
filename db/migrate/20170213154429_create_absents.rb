class CreateAbsents < ActiveRecord::Migration[5.0]
  def change
    create_table :absents do |t|
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
