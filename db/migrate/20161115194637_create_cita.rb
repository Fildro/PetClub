class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.date :date
      t.time :time
      t.string :obs
      t.string :mascota
      t.string :medico
      t.string :cliente

      t.timestamps null: false
    end
  end
end
