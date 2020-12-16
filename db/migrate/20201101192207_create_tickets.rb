class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :uid
      t.integer :cid
      t.boolean  :visto
      t.timestamps
    end
  end
end
