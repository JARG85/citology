class CreateMedicos < ActiveRecord::Migration[7.0]
  def change
    create_table :medicos do |t|
      t.string :nombre
      t.string :especialidad
      t.string :num_licencia
      t.string :horario

      t.timestamps
    end
  end
end
