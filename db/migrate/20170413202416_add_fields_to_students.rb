class AddFieldsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :representante1, :string
    add_column :students, :representante2, :string
    add_column :students, :email1, :string
    add_column :students, :email2, :string
    add_column :students, :phone1, :string
    add_column :students, :phone2, :string
    add_column :students, :birthdate, :string
  end
end
