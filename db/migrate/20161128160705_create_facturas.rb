class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.datetime :fecha
      t.integer :cliente_id
      t.integer :medico_id

      t.timestamps null: false
    end
  end
end
