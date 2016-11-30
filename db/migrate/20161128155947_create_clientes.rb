class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombrecli
      t.string :appcli
      t.string :dnicli
      t.string :direccioncli

      t.timestamps null: false
    end
  end
end
