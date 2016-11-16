class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :app
      t.string :apm
      t.string :dni
      t.date :fechanac
      t.string :distrito
      t.string :direccion

      t.timestamps null: false
    end
  end
end
