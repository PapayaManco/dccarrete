class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      #t.belongs_to :usuario
      t.string :nombre
      t.string :descripcion
      t.string :categoria
      t.timestamps
    end
  end
end
