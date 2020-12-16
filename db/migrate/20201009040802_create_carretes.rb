class CreateCarretes < ActiveRecord::Migration[5.2]
  def change
    create_table :carretes do |t|
      t.string :nombre
      t.string :direccion
      t.integer :max_asistentes
      t.integer :user_id
      t.integer :monto_minimo
      t.timestamps
    end
  end
end
