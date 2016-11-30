class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombrem
      t.string :appm
      t.string :dnim
      t.string :especialidadm

      t.timestamps null: false
    end
  end
end
