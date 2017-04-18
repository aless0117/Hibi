class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :apellido
      t.belongs_to :classroom, index: true

      t.timestamps
    end
  end
end
