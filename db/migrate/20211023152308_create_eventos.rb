class CreateEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.date :fecha
      t.string :descripcion

      t.timestamps
    end
  end
end
