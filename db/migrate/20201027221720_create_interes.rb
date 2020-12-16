class CreateInteres < ActiveRecord::Migration[5.2]
  def change
    create_table :interes do |t|
      t.integer :carrete_id
      t.integer :user_id
      t.integer :monto

      t.timestamps
    end
  end
end
