class CreateParticipantes < ActiveRecord::Migration[6.1]
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :app_paterno
      t.string :app_materno
      t.string :email
      t.references :evento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
