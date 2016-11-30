class CreateMascots < ActiveRecord::Migration
  def change
    create_table :mascots do |t|
      t.string :nombrema
      t.string :razama
      t.string :colorma
      t.date :fechanacma
      t.string :sexoma
      t.decimal :pesoma
      t.integer :cliente_id

      t.timestamps null: false
    end
  end
end
