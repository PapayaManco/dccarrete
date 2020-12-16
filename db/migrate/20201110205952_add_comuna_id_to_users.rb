class AddComunaIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :comuna_id, :integer
  end
end
