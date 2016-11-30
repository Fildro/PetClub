class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombrep
      t.string :categoriap
      t.string :unidadmedidap
      t.string :stockp
      t.decimal :precostop
      t.decimal :prevenp

      t.timestamps null: false
    end
  end
end
