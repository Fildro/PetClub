class CreateDetallefacturas < ActiveRecord::Migration
  def change
    create_table :detallefacturas do |t|
      t.integer :factura_id
      t.integer :mascot_id
      t.integer :servicio_id
      t.integer :producto_id
      t.string :cantidad
      t.decimal :prevenp

      t.timestamps null: false
    end
  end
end
