class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :numero_identidad
      t.integer :edad
      t.string :direccion
      t.string :telefono
      t.text :historia_clinica

      t.timestamps
    end
  end
end
