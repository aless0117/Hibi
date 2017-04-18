class CreateLacks < ActiveRecord::Migration[5.0]
  def change
    create_table :lacks do |t|
      t.string :tipodefalta

      t.timestamps
    end
  end
end
