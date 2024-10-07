class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nombre, null: false
      t.string :numero_identidad, null: false
      t.integer :edad
      t.string :direccion
      t.string :telefono
      t.text :historia_clinica

      t.timestamps
    end
  end
end
