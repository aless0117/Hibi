class CreateLackcodes < ActiveRecord::Migration[5.0]
  def change
    create_table :lackcodes do |t|
      t.string :name
      t.references :lack, foreign_key: true

      t.timestamps
    end
  end
end
