class CreateRecursos < ActiveRecord::Migration[7.0]
  def change
    create_table :recursos do |t|
      t.string :tipo
      t.boolean :disponibilidad
      t.string :codigo

      t.timestamps
    end
  end
end
