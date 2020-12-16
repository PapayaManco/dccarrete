class AddComunaIdToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :comuna_id, :integer
  end
end
