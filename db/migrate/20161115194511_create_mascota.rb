class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :color
      t.date :fechanac
      t.string :sexo
      t.decimal :peso
      t.string :cliente

      t.timestamps null: false
    end
  end
end
