class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :tipo
      t.decimal :precio
      t.string :obs
      t.string :mascota
      t.string :medico
      t.string :cliente

      t.timestamps null: false
    end
  end
end
