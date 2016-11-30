class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tipose
      t.string :descripcionse
      t.decimal :preciose

      t.timestamps null: false
    end
  end
end
