class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombre
      t.string :app
      t.string :apm
      t.string :dni
      t.string :especialidad

      t.timestamps null: false
    end
  end
end
