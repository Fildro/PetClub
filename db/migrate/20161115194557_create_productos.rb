class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :categoria
      t.string :unidadmedida
      t.string :stock
      t.decimal :precosto
      t.decimal :preven
      t.string :descrip
      t.string :obs

      t.timestamps null: false
    end
  end
end
