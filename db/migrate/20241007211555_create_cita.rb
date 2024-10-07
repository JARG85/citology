class CreateCita < ActiveRecord::Migration[7.0]
  def change
    create_table :cita do |t|
      t.string :fecha
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
